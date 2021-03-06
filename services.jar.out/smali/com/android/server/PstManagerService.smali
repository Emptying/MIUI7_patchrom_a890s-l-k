.class public Lcom/android/server/PstManagerService;
.super Landroid/view/IPstManager$Stub;
.source "PstManagerService.java"


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_FUNCTION:Z = false

.field private static final DELAYED_ANSWER_RINGING_CALL:I = 0x3e8

.field private static final DELAYED_END_CALL:I = 0x3e9

.field private static final LOCATION_GPS_START:I = 0x33

.field private static final LOCATION_GPS_STOP:I = 0x34

.field private static final PANTECH_USB_MODE_MTP:Ljava/lang/String; = "mtp_mode"

.field private static final PANTECH_USB_MODE_PC:Ljava/lang/String; = "pc_mode"

.field private static final PROP_PANTECH_CURRENT:Ljava/lang/String; = "persist.pantech.usb.current"

.field private static final PROP_PANTECH_DEFAULT:Ljava/lang/String; = "persist.pantech.usb.default"

.field private static final PROP_USBMODE_CURRENT:Ljava/lang/String; = "sys.usb.config"

.field private static final PROP_USBMODE_DEFAULT:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final PROP_USB_MODE_MTP:Ljava/lang/String; = "persist.pantech.usb.mtp_mode"

.field private static final PROP_USB_MODE_PC:Ljava/lang/String; = "persist.pantech.usb.pc_mode"

.field private static final SECUREMMS_RESET_INTENT:Ljava/lang/String; = "com.pantech.app.mms.LockReset"

.field private static final TAG:Ljava/lang/String; = "PstManagerService"


# instance fields
.field private Accuracy:F

.field private Altitude:D

.field private Bearing:F

.field private GpsMessageHandler:Landroid/os/Handler;

.field private Latitude:D

.field private Longitude:D

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

.field private PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;

.field private PPST_REMOVE_SECURE_PIN_DATA_EXTRA_KEY:Ljava/lang/String;

.field private PPST_REMOVE_SECURE_PIN_DATA_EXTRA_VALUE:Ljava/lang/String;

.field private PPST_SHOW_HIDDENMENU:Ljava/lang/String;

.field private Speed:F

.field private Svcount:I

.field private answer_delay_time:I

.field private copyreturnval:Ljava/lang/String;

.field private copysize:J

.field private currentIV:[B

.field private end_delay_time:I

.field private end_time:J

.field private expectedtime:J

.field private getcopyreturn:Z

.field private gpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private isAutoAnswer:Z

.field private isAutoCall:Z

.field private isEnabledPPSTByAuthority:Z

.field private locationListener:Landroid/location/LocationListener;

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGpsStatus:Landroid/location/GpsStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWifiEnabled:Z

.field private mLastLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field mLocationmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigating:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrns:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowFlinger:I

.field private mShowProcess:I

.field private mShowTouches:I

.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field mSvmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTtff:I

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private networkInfo:Landroid/net/NetworkInfo;

.field private number:Ljava/lang/String;

.field private start_time:J

.field private wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/PstManagerService;->DEBUG:Z

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x2

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Landroid/view/IPstManager$Stub;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    .line 116
    iput-object v2, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 120
    iput v0, p0, Lcom/android/server/PstManagerService;->mShowProcess:I

    .line 121
    iput v0, p0, Lcom/android/server/PstManagerService;->mShowTouches:I

    .line 122
    iput v0, p0, Lcom/android/server/PstManagerService;->mShowFlinger:I

    .line 125
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    .line 126
    iput-object v2, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    iput-object v2, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 148
    iput v1, p0, Lcom/android/server/PstManagerService;->Svcount:I

    .line 149
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mSvmap:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    .line 155
    iput v1, p0, Lcom/android/server/PstManagerService;->mTtff:I

    .line 165
    const-string v0, "com.android.ppst.remove_secure_pin_data"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;

    .line 166
    const-string v0, "remove_secure_pin_data"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_KEY:Ljava/lang/String;

    .line 167
    const-string v0, "remove"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_VALUE:Ljava/lang/String;

    .line 168
    const-string v0, "fileName"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

    .line 169
    const-string v0, "funtion"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

    .line 170
    const-string v0, "getSIZE"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

    .line 171
    const-string v0, "copy"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

    .line 172
    iput-wide v3, p0, Lcom/android/server/PstManagerService;->copysize:J

    .line 173
    const-string v0, "size"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

    .line 174
    const-string v0, "result"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

    .line 175
    const-string v0, "com.android.ppst.send_copy"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    .line 176
    const-string v0, "Fail"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;

    .line 177
    const-string v0, "targetFileName"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

    .line 179
    const-string v0, "sys.ppst.srv.SHM"

    iput-object v0, p0, Lcom/android/server/PstManagerService;->PPST_SHOW_HIDDENMENU:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/android/server/PstManagerService;->currentIV:[B

    .line 183
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->isEnabledPPSTByAuthority:Z

    .line 186
    iput-wide v3, p0, Lcom/android/server/PstManagerService;->expectedtime:J

    .line 187
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->getcopyreturn:Z

    .line 189
    new-instance v0, Lcom/android/server/PstManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$1;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-instance v0, Lcom/android/server/PstManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$2;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->locationListener:Landroid/location/LocationListener;

    .line 873
    new-instance v0, Lcom/android/server/PstManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$3;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 956
    new-instance v0, Lcom/android/server/PstManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$4;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->GpsMessageHandler:Landroid/os/Handler;

    .line 1020
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/PstManagerService;->answer_delay_time:I

    .line 1021
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/PstManagerService;->end_delay_time:I

    .line 1024
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->isAutoAnswer:Z

    .line 1025
    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->isAutoCall:Z

    .line 1026
    new-instance v0, Lcom/android/server/PstManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$5;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    .line 1082
    new-instance v0, Lcom/android/server/PstManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/PstManagerService$6;-><init>(Lcom/android/server/PstManagerService;)V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 212
    iput-object p1, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    .line 213
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 218
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 221
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 222
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/PstManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 224
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 228
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/PstManagerService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 234
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/server/PstManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/PstManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/PstManagerService;->mLastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/PstManagerService;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->Latitude:D

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/PstManagerService;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # D

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->Latitude:D

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/PstManagerService;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->Longitude:D

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/PstManagerService;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # D

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->Longitude:D

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/PstManagerService;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->Altitude:D

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/PstManagerService;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # D

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->Altitude:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/PstManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->Accuracy:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/PstManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/android/server/PstManagerService;->Accuracy:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/PstManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->Speed:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/PstManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/android/server/PstManagerService;->Speed:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/PstManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->Bearing:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/PstManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/android/server/PstManagerService;->Bearing:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/PstManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->mTtff:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/PstManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/server/PstManagerService;->mTtff:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/PstManagerService;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Landroid/location/GpsStatus;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/PstManagerService;->mGpsStatus:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/PstManagerService;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PstManagerService;Landroid/location/GpsStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Landroid/location/GpsStatus;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/PstManagerService;->updateStatelliteStatus(Landroid/location/GpsStatus;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/PstManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/PstManagerService;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/PstManagerService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/PstManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->isAutoAnswer:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/PstManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/PstManagerService;->isAutoAnswer:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/PstManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/PstManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->end_delay_time:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/PstManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->isAutoCall:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/PstManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/server/PstManagerService;->isAutoCall:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/PstManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->end_time:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/PstManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->end_time:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/PstManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->start_time:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/server/PstManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->start_time:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/PstManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/PstManagerService;->answer_delay_time:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/PstManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/PstManagerService;->removeSecurePinData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/PstManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/PstManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PstManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/PstManagerService;->copysize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/PstManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PstManagerService;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method private removeSecurePinData()V
    .locals 5

    .prologue
    .line 1187
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_0

    const-string v2, "PstManagerService"

    const-string v3, "(+)removeSecurePinData"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 1191
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 1192
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1195
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_1

    const-string v2, "PstManagerService"

    const-string v3, "(-)removeSecurePinData"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_1
    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFlingerOptions()V
    .locals 10

    .prologue
    .line 373
    :try_start_0
    const-string v8, "SurfaceFlinger"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 374
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 376
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 377
    .local v4, "reply":Landroid/os/Parcel;
    const-string v8, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    const/16 v8, 0x3f2

    const/4 v9, 0x0

    invoke-interface {v3, v8, v0, v4, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 380
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 382
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .local v1, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 385
    .local v7, "showUpdates":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 386
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v8, "PstManagerService"

    const-string v9, "fail to get surfacelinger."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateStatelliteStatus(Landroid/location/GpsStatus;)V
    .locals 10
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 797
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 799
    .local v5, "satellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mPrns:[I

    if-nez v6, :cond_0

    .line 801
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 802
    .local v1, "length":I
    new-array v6, v1, [I

    iput-object v6, p0, Lcom/android/server/PstManagerService;->mPrns:[I

    .line 803
    new-array v6, v1, [F

    iput-object v6, p0, Lcom/android/server/PstManagerService;->mSnrs:[F

    .line 804
    new-array v6, v1, [F

    iput-object v6, p0, Lcom/android/server/PstManagerService;->mSvElevations:[F

    .line 805
    new-array v6, v1, [F

    iput-object v6, p0, Lcom/android/server/PstManagerService;->mSvAzimuths:[F

    .line 808
    .end local v1    # "length":I
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    .line 809
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mSvmap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 811
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v0, "Svmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 815
    .local v4, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 816
    .local v2, "prn":I
    const/4 v6, 0x1

    add-int/lit8 v7, v2, -0x1

    shl-int v3, v6, v7

    .line 817
    .local v3, "prnBit":I
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mPrns:[I

    iget v7, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aput v2, v6, v7

    .line 818
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mSnrs:[F

    iget v7, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    aput v8, v6, v7

    .line 819
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mSvElevations:[F

    iget v7, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v8

    aput v8, v6, v7

    .line 820
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mSvAzimuths:[F

    iget v7, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v8

    aput v8, v6, v7

    .line 822
    iget v6, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    iput v6, p0, Lcom/android/server/PstManagerService;->Svcount:I

    .line 823
    const-string v6, "prn"

    iget-object v7, p0, Lcom/android/server/PstManagerService;->mPrns:[I

    iget v8, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v6, "snr"

    iget-object v7, p0, Lcom/android/server/PstManagerService;->mSnrs:[F

    iget v8, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v6, "elev"

    iget-object v7, p0, Lcom/android/server/PstManagerService;->mSvElevations:[F

    iget v8, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v6, "azimuth"

    iget-object v7, p0, Lcom/android/server/PstManagerService;->mSvAzimuths:[F

    iget v8, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sv_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PstManagerService;->Svcount:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PstManagerService;->number:Ljava/lang/String;

    .line 829
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mSvmap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/PstManagerService;->number:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v6, "PstManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sv Information [SvCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PstManagerService;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PstManagerService;->mPrns:[I

    iget v9, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " snr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PstManagerService;->mSnrs:[F

    iget v9, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " elev : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PstManagerService;->mSvElevations:[F

    iget v9, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " azimuth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PstManagerService;->mSvAzimuths:[F

    iget v9, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget v6, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    goto/16 :goto_0

    .line 835
    .end local v0    # "Svmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "prn":I
    .end local v3    # "prnBit":I
    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    return-void
.end method


# virtual methods
.method public CopyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "srcFileName"    # Ljava/lang/String;
    .param p3, "targetFile"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 1580
    const-string v2, "Fail"

    iput-object v2, p0, Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;

    .line 1581
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/android/server/PstManagerService;->copysize:J

    .line 1583
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1584
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1589
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1590
    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "error to stat copy."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const-string v2, "Fail"

    iput-object v2, p0, Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;

    goto :goto_0
.end method

.method public OffHiddenMenu()V
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_SHOW_HIDDENMENU:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method public OnHiddenMenu()V
    .locals 2

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/server/PstManagerService;->PPST_SHOW_HIDDENMENU:Ljava/lang/String;

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    return-void
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 6

    .prologue
    .line 282
    iget-boolean v3, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/4 v2, 0x0

    .line 286
    .local v2, "mgr":Landroid/accounts/AccountManager;
    const/4 v0, 0x0

    .line 288
    .local v0, "accts":[Landroid/accounts/Account;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get account. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAddressCount()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1000
    const/4 v6, 0x0

    .line 1002
    .local v6, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "has_phone_number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1012
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1008
    :catch_0
    move-exception v7

    .line 1009
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "PstManagerService"

    const-string v1, "unknown address count"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getChannelByFrequency(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 532
    sparse-switch p1, :sswitch_data_0

    .line 567
    move v0, p1

    .line 570
    .local v0, "nCh":I
    :goto_0
    return v0

    .line 534
    .end local v0    # "nCh":I
    :sswitch_0
    const/4 v0, 0x1

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 535
    .end local v0    # "nCh":I
    :sswitch_1
    const/4 v0, 0x2

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 536
    .end local v0    # "nCh":I
    :sswitch_2
    const/4 v0, 0x3

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 537
    .end local v0    # "nCh":I
    :sswitch_3
    const/4 v0, 0x4

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 538
    .end local v0    # "nCh":I
    :sswitch_4
    const/4 v0, 0x5

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 539
    .end local v0    # "nCh":I
    :sswitch_5
    const/4 v0, 0x6

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 540
    .end local v0    # "nCh":I
    :sswitch_6
    const/4 v0, 0x7

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 541
    .end local v0    # "nCh":I
    :sswitch_7
    const/16 v0, 0x8

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 542
    .end local v0    # "nCh":I
    :sswitch_8
    const/16 v0, 0x9

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 543
    .end local v0    # "nCh":I
    :sswitch_9
    const/16 v0, 0xa

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 544
    .end local v0    # "nCh":I
    :sswitch_a
    const/16 v0, 0xb

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 545
    .end local v0    # "nCh":I
    :sswitch_b
    const/16 v0, 0xc

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 546
    .end local v0    # "nCh":I
    :sswitch_c
    const/16 v0, 0xd

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 547
    .end local v0    # "nCh":I
    :sswitch_d
    const/16 v0, 0xe

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 549
    .end local v0    # "nCh":I
    :sswitch_e
    const/16 v0, 0x28

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 550
    .end local v0    # "nCh":I
    :sswitch_f
    const/16 v0, 0x24

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 551
    .end local v0    # "nCh":I
    :sswitch_10
    const/16 v0, 0x2c

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 552
    .end local v0    # "nCh":I
    :sswitch_11
    const/16 v0, 0x30

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 553
    .end local v0    # "nCh":I
    :sswitch_12
    const/16 v0, 0x34

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 554
    .end local v0    # "nCh":I
    :sswitch_13
    const/16 v0, 0x38

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 555
    .end local v0    # "nCh":I
    :sswitch_14
    const/16 v0, 0x3c

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 556
    .end local v0    # "nCh":I
    :sswitch_15
    const/16 v0, 0x40

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 557
    .end local v0    # "nCh":I
    :sswitch_16
    const/16 v0, 0x95

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 558
    .end local v0    # "nCh":I
    :sswitch_17
    const/16 v0, 0x99

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 559
    .end local v0    # "nCh":I
    :sswitch_18
    const/16 v0, 0x9d

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 560
    .end local v0    # "nCh":I
    :sswitch_19
    const/16 v0, 0xa1

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 562
    .end local v0    # "nCh":I
    :sswitch_1a
    const/16 v0, 0x22

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 563
    .end local v0    # "nCh":I
    :sswitch_1b
    const/16 v0, 0x26

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 564
    .end local v0    # "nCh":I
    :sswitch_1c
    const/16 v0, 0x2a

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 565
    .end local v0    # "nCh":I
    :sswitch_1d
    const/16 v0, 0x2e

    .restart local v0    # "nCh":I
    goto :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x1432 -> :sswitch_1a
        0x143c -> :sswitch_f
        0x1446 -> :sswitch_1b
        0x1450 -> :sswitch_e
        0x145a -> :sswitch_1c
        0x1464 -> :sswitch_10
        0x146e -> :sswitch_1d
        0x1478 -> :sswitch_11
        0x148c -> :sswitch_12
        0x14a0 -> :sswitch_13
        0x14b4 -> :sswitch_14
        0x14c8 -> :sswitch_15
        0x1671 -> :sswitch_16
        0x1685 -> :sswitch_17
        0x1699 -> :sswitch_18
        0x16ad -> :sswitch_19
    .end sparse-switch
.end method

.method public getCurrentIV()[B
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/server/PstManagerService;->currentIV:[B

    return-object v0
.end method

.method public getDebugScreenInfo()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 729
    .local v1, "debugscreen_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getModemDbgInfo"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 730
    .local v3, "getModemDbgInfo":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v3    # "getModemDbgInfo":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 732
    :catch_0
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PstManagerService"

    const-string v5, "error debugscreen info."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getDebugScreenInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getDebugScreenInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsLocationInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    const-string v1, "PstManagerService"

    const-string v2, "getGpsLocationInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 945
    .local v0, "gps_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    .line 946
    return-object v0
.end method

.method public bridge synthetic getGpsLocationInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getGpsLocationInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getGpsSvInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    const-string v1, "PstManagerService"

    const-string v2, "getGpsSvInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 952
    .local v0, "gps_sv_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap;>;"
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mSvmap:Ljava/util/HashMap;

    .line 953
    return-object v0
.end method

.method public bridge synthetic getGpsSvInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getGpsSvInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenMenu()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/android/server/PstManagerService;->PPST_SHOW_HIDDENMENU:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, "stateofHiddenMenu":Ljava/lang/String;
    return-object v0
.end method

.method public getIsEnabledPPSTByAuthorit()Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->isEnabledPPSTByAuthority:Z

    return v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 674
    const/4 v2, -0x1

    .line 675
    .local v2, "lac":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 677
    .local v0, "activePhoneType":I
    const/4 v4, 0x1

    if-ne v4, v0, :cond_0

    .line 678
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 680
    .local v3, "loc":Landroid/telephony/gsm/GsmCellLocation;
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 685
    .end local v3    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    const-string v4, "unknown"

    :goto_1
    return-object v4

    .line 681
    .restart local v3    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
    .param p1, "listmode"    # Ljava/lang/String;
    .param p2, "mediatype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1393
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1394
    .local v8, "media_list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1396
    .local v10, "nCount":I
    const-string v1, "image"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1397
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1399
    .local v7, "imageCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1400
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1402
    :cond_0
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1404
    .local v13, "path":Ljava/lang/String;
    const-string v1, "directory"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    const-string v1, "_display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1406
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v13, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1408
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    .end local v12    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1415
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1480
    .end local v7    # "imageCursor":Landroid/database/Cursor;
    .end local v13    # "path":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 1412
    .restart local v7    # "imageCursor":Landroid/database/Cursor;
    .restart local v13    # "path":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_1

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "nCount":I
    .local v11, "nCount":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v11

    .end local v11    # "nCount":I
    .restart local v10    # "nCount":I
    goto :goto_0

    .line 1417
    .end local v13    # "path":Ljava/lang/String;
    :cond_3
    const-string v1, "PstManagerService"

    const-string v2, "No image files"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1420
    :cond_4
    const-string v1, "PstManagerService"

    const-string v2, "cant\'t load image cursor"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1424
    .end local v7    # "imageCursor":Landroid/database/Cursor;
    :cond_5
    const-string v1, "music"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1425
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1427
    .local v9, "musicCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1428
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 1430
    :cond_6
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1432
    .restart local v13    # "path":Ljava/lang/String;
    const-string v1, "directory"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1433
    const-string v1, "_display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1434
    .restart local v12    # "name":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v13, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1436
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1443
    .end local v12    # "name":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    .line 1440
    :cond_8
    if-eqz v13, :cond_7

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "nCount":I
    .restart local v11    # "nCount":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v11

    .end local v11    # "nCount":I
    .restart local v10    # "nCount":I
    goto :goto_2

    .line 1445
    .end local v13    # "path":Ljava/lang/String;
    :cond_9
    const-string v1, "PstManagerService"

    const-string v2, "No music files"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1448
    :cond_a
    const-string v1, "PstManagerService"

    const-string v2, "cant\'t load music cursor"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1451
    .end local v9    # "musicCursor":Landroid/database/Cursor;
    :cond_b
    const-string v1, "video"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1452
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1454
    .local v14, "videoCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_10

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1455
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f

    .line 1457
    :cond_c
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1459
    .restart local v13    # "path":Ljava/lang/String;
    const-string v1, "directory"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1460
    const-string v1, "_display_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1461
    .restart local v12    # "name":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v13, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1462
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1469
    .end local v12    # "name":Ljava/lang/String;
    :cond_d
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    .line 1466
    :cond_e
    if-eqz v13, :cond_d

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "nCount":I
    .restart local v11    # "nCount":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v11

    .end local v11    # "nCount":I
    .restart local v10    # "nCount":I
    goto :goto_3

    .line 1471
    .end local v13    # "path":Ljava/lang/String;
    :cond_f
    const-string v1, "PstManagerService"

    const-string v2, "No video files"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1474
    :cond_10
    const-string v1, "PstManagerService"

    const-string v2, "cant\'t load video cursor"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1478
    .end local v14    # "videoCursor":Landroid/database/Cursor;
    :cond_11
    const-string v1, "PstManagerService"

    const-string v2, "can\'t read media type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public bridge synthetic getMediaList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/PstManagerService;->getMediaList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 667
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 664
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOsVersion()I
    .locals 3

    .prologue
    .line 1343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .local v0, "Os":I
    :goto_0
    return v0

    .line 1344
    .end local v0    # "Os":I
    :catch_0
    move-exception v1

    .line 1345
    .local v1, "e":Ljava/lang/Exception;
    const/16 v0, 0x9

    .line 1346
    .restart local v0    # "Os":I
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPointerLocation()I
    .locals 5

    .prologue
    .line 268
    iget-boolean v2, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 269
    const/4 v1, -0x1

    .line 278
    :goto_0
    return v1

    .line 271
    :cond_0
    const/4 v1, -0x1

    .line 273
    .local v1, "rslt":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "fail to access content resolver."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1485
    const/4 v3, 0x0

    .line 1486
    .local v3, "resolution":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1487
    .local v4, "width":I
    const/4 v2, 0x0

    .line 1489
    .local v2, "height":I
    iget-object v5, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1492
    .local v0, "display":Landroid/view/Display;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1493
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1501
    :goto_0
    return-object v3

    .line 1497
    :catch_0
    move-exception v1

    .line 1498
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1499
    const-string v5, "PstManagerService"

    const-string v6, "can\'t read resolution"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSafeboxAccount()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1558
    const/4 v8, 0x0

    .line 1561
    .local v8, "strSafeboxAcunt":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.pantech.app.safebox/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "setting_path"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1562
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1563
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1564
    const-string v0, "PstManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get safebox account ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_0
    if-eqz v6, :cond_0

    .line 1570
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1575
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-object v8

    .line 1567
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "PstManagerService"

    const-string v1, "fail to get safebox account"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1571
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1572
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "PstManagerService"

    const-string v1, "error get safebox account."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 654
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 651
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalSzieofCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 1598
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/android/server/PstManagerService;->copysize:J

    .line 1600
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1601
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/PstManagerService;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1605
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1606
    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cant found class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1610
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/PstManagerService;->copysize:J

    goto :goto_0
.end method

.method public getUsbMode()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1252
    .local v5, "usb_mode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v6, "sys.usb.config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, "currentSysMode":Ljava/lang/String;
    const-string v6, "persist.sys.usb.config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, "defaultPerSysMode":Ljava/lang/String;
    const-string v6, "persist.pantech.usb.current"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "currentMode":Ljava/lang/String;
    const-string v6, "persist.pantech.usb.default"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "defaultMode":Ljava/lang/String;
    const-string v6, "sys.usb.config"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string v6, "persist.sys.usb.config"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string v6, "persist.pantech.usb.current"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v6, "persist.pantech.usb.default"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    .end local v0    # "currentMode":Ljava/lang/String;
    .end local v1    # "currentSysMode":Ljava/lang/String;
    .end local v2    # "defaultMode":Ljava/lang/String;
    .end local v3    # "defaultPerSysMode":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1269
    :catch_0
    move-exception v4

    .line 1270
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic getUsbMode()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getUsbMode()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getWcdmaDns()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 693
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 694
    .local v3, "lp":Landroid/net/LinkProperties;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, " - "

    aput-object v4, v0, v6

    const-string v4, " - "

    aput-object v4, v0, v7

    .line 696
    .local v0, "dns":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 697
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 698
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 699
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 702
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "dns_add":Ljava/lang/String;
    return-object v2
.end method

.method public getWcdmaIP()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, "ip_add":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 713
    .local v3, "lp":Landroid/net/LinkProperties;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, " - "

    aput-object v4, v0, v6

    const/4 v4, 0x1

    const-string v5, " - "

    aput-object v5, v0, v4

    .line 715
    .local v0, "dns":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 716
    .local v1, "ipIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 719
    :cond_0
    if-nez v2, :cond_1

    const-string v2, "unknown"

    .end local v2    # "ip_add":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    if-nez v0, :cond_0

    .line 487
    const-string v0, "unknown"

    .line 488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiChannel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 518
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 519
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 520
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_1

    .line 521
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 522
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 523
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget v4, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v4}, Lcom/android/server/PstManagerService;->getChannelByFrequency(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 527
    .end local v0    # "i":I
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :goto_1
    return-object v4

    .line 521
    .restart local v0    # "i":I
    .restart local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 527
    .end local v0    # "i":I
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v4, "unknown"

    goto :goto_1
.end method

.method public getWifiDebugScreenInfo()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v6, "wifidebugscreen_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v7, "com.android.server.WifiDebugScreenInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 747
    .local v4, "mclass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 748
    .local v5, "mconstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 751
    .local v3, "mWifiDebugScreenInfo":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getWIFIDbgInfo"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 753
    .local v2, "getModemDbgInfo":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/HashMap;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v2    # "getModemDbgInfo":Ljava/lang/reflect/Method;
    .end local v3    # "mWifiDebugScreenInfo":Ljava/lang/Object;
    .end local v4    # "mclass":Ljava/lang/Class;
    .end local v5    # "mconstructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v6

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "PstManagerService"

    const-string v8, "error wifi debugscreen info."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic getWifiDebugScreenInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getWifiDebugScreenInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiFER_PER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 641
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWifiLinkSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    if-nez v0, :cond_0

    .line 496
    const-string v0, "unknown"

    .line 497
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiMacAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 610
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 607
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getWifiRssi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "unknown wifi rssi"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    if-nez v0, :cond_0

    .line 478
    const-string v0, "unknown"

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiScanList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v6, "wifiscan_info":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    const-string v7, "com.android.server.WifiDebugScreenInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 773
    .local v4, "mclass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 774
    .local v5, "mconstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 777
    .local v3, "mWifiDebugScreenInfo":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getWIFIScanInfo"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 778
    .local v2, "getWIFIScanInfo":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 782
    const-string v7, "PstManagerService"

    const-string v8, "return getWifiScanList"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v2    # "getWIFIScanInfo":Ljava/lang/reflect/Method;
    .end local v3    # "mWifiDebugScreenInfo":Ljava/lang/Object;
    .end local v4    # "mclass":Ljava/lang/Class;
    .end local v5    # "mconstructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v6

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "PstManagerService"

    const-string v8, "error debugscreen info."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getWifiState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    iget-boolean v1, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    if-nez v1, :cond_0

    .line 459
    const-string v1, "Power OFF"

    .line 470
    :goto_0
    return-object v1

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/server/PstManagerService;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 463
    .local v0, "state":Landroid/net/NetworkInfo$State;
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 464
    const-string v1, "Connected"

    goto :goto_0

    .line 465
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 466
    const-string v1, "Connecting"

    goto :goto_0

    .line 467
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    .line 468
    const-string v1, "Disconnecting"

    goto :goto_0

    .line 470
    :cond_3
    const-string v1, "Disconnected"

    goto :goto_0
.end method

.method public getWifiip()Ljava/lang/String;
    .locals 7

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "addr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 581
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_use_static_ip"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    const-string v4, "wifi_static_ip"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 587
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 596
    .end local v0    # "addr":Ljava/lang/String;
    .local v1, "addr":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 583
    .end local v1    # "addr":Ljava/lang/String;
    .restart local v0    # "addr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 584
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WIFISebugScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SWM, getIpAddress, error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 596
    .end local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "addr":Ljava/lang/String;
    goto :goto_1

    .line 592
    .end local v1    # "addr":Ljava/lang/String;
    .restart local v0    # "addr":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 593
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "PstManagerService"

    const-string v5, "unknown wifi address"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "0.0.0.0"

    goto :goto_2
.end method

.method public getcopyTotalSize()J
    .locals 2

    .prologue
    .line 1615
    iget-wide v0, p0, Lcom/android/server/PstManagerService;->copysize:J

    return-wide v0
.end method

.method public getcopyreturnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/server/PstManagerService;->copyreturnval:Ljava/lang/String;

    return-object v0
.end method

.method public gpsStart()V
    .locals 4

    .prologue
    .line 911
    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpsStart: -----------------------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-boolean v1, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    if-nez v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/server/PstManagerService;->GpsMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 915
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PstManagerService;->GpsMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 917
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mLocationmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 918
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mSvmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 919
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PstManagerService;->mTtff:I

    .line 920
    return-void
.end method

.method public gpsStop()V
    .locals 5

    .prologue
    .line 924
    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpsStop: <----------mNavigating -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    if-eqz v2, :cond_0

    .line 929
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/PstManagerService;->mSvCount:I

    .line 930
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/server/PstManagerService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 931
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/server/PstManagerService;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 932
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    .line 933
    iget-object v2, p0, Lcom/android/server/PstManagerService;->GpsMessageHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 934
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PstManagerService;->GpsMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error gpsStop (mNavigating -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PstManagerService;->mNavigating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removePin()Z
    .locals 4

    .prologue
    .line 1179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/PstManagerService;->PPST_REMOVE_SECURE_PIN_DATA_EXTRA_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    iget-object v1, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1182
    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send broadcast. intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v1, 0x1

    return v1
.end method

.method public resetSmsLock()Z
    .locals 5

    .prologue
    .line 987
    const/4 v2, 0x0

    .line 989
    .local v2, "rslt":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.mms.LockReset"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    const-string v3, "PstManagerService"

    const-string v4, "send broadcast msg. com.pantech.app.mms.LockReset"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    const/4 v2, 0x1

    .line 996
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return v2

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    const-string v4, "error sms reset."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendEraseFingerPrintDB()Z
    .locals 5

    .prologue
    .line 1507
    const/4 v2, 0x0

    .line 1510
    .local v2, "rslt":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.action.fingerprint.deleteall"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1512
    const-string v3, "PstManagerService"

    const-string v4, "send broadcast fingerprint deletall."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    const/4 v2, 0x1

    .line 1519
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    const-string v4, "error delete finger print"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendSafeboxLockRemove()Z
    .locals 5

    .prologue
    .line 1541
    const/4 v2, 0x0

    .line 1544
    .local v2, "rslt":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.safebox.action.PST_LOCK_RELEASE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1546
    const-string v3, "PstManagerService"

    const-string v4, "send broadcast safebox lock remove."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    const/4 v2, 0x1

    .line 1553
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    const-string v4, "error delete safebox lock remove."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendSecretNotePass()Z
    .locals 5

    .prologue
    .line 1524
    const/4 v2, 0x0

    .line 1527
    .local v2, "rslt":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.safebox.action.PST_ACCOUNT_PASS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1529
    const-string v3, "PstManagerService"

    const-string v4, "send broadcast secret note pass."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    const/4 v2, 0x1

    .line 1536
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    const-string v4, "error pass secret note."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAdbMode(I)Z
    .locals 4
    .param p1, "set"    # I

    .prologue
    .line 1207
    const/4 v0, 0x1

    .line 1209
    .local v0, "bRtn":Z
    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set USB ADB mode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v0
.end method

.method public setCurrentIV([B)V
    .locals 0
    .param p1, "newIV"    # [B

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/android/server/PstManagerService;->currentIV:[B

    .line 1636
    return-void
.end method

.method public setIsEnabledPPSTByAuthority(Z)V
    .locals 0
    .param p1, "Authority"    # Z

    .prologue
    .line 1643
    iput-boolean p1, p0, Lcom/android/server/PstManagerService;->isEnabledPPSTByAuthority:Z

    .line 1644
    return-void
.end method

.method public setMediaScan()Z
    .locals 7

    .prologue
    .line 1162
    const/4 v1, 0x0

    .line 1164
    .local v1, "rslt":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1166
    const-string v2, "PstManagerService"

    const-string v3, "send broadcast media scan. ACTION_MEDIA_MOUNTED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    const/4 v1, 0x1

    .line 1171
    :goto_0
    return v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "error media scan."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPointerLocation(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 251
    iget-boolean v2, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 252
    const/4 v1, 0x0

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, "rslt":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->getPointerLocation()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "fail to write content resolver"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowFlingerOptions(I)Z
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-boolean v4, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v3

    .line 344
    :cond_1
    iget v4, p0, Lcom/android/server/PstManagerService;->mShowFlinger:I

    if-ne v4, p1, :cond_2

    .line 345
    const/4 v3, 0x1

    goto :goto_0

    .line 347
    :cond_2
    const/4 v3, 0x0

    .line 349
    .local v3, "rslt":Z
    :try_start_0
    const-string v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 350
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    .local v0, "data":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-direct {p0}, Lcom/android/server/PstManagerService;->updateFlingerOptions()V

    .line 359
    iput p1, p0, Lcom/android/server/PstManagerService;->mShowFlinger:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/4 v3, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PstManagerService"

    const-string v5, "fail to access content resolver."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowProcesses(I)Z
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 297
    iget-boolean v4, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v4, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1

    .line 300
    :cond_0
    iget v4, p0, Lcom/android/server/PstManagerService;->mShowProcess:I

    if-ne v4, p1, :cond_1

    move v1, v3

    .line 301
    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 305
    .local v1, "rslt":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_processes"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 307
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.LoadAverageService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 309
    .local v2, "service":Landroid/content/Intent;
    if-ne p1, v3, :cond_2

    .line 310
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    :goto_1
    iput p1, p0, Lcom/android/server/PstManagerService;->mShowProcess:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v2    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PstManagerService"

    const-string v4, "fail to access content resolver."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "service":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setShowTouches(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 323
    iget-boolean v2, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    .line 326
    :cond_0
    iget v2, p0, Lcom/android/server/PstManagerService;->mShowTouches:I

    if-ne v2, p1, :cond_1

    .line 327
    const/4 v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    .line 331
    .local v1, "rslt":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PstManagerService"

    const-string v3, "fail to access content resolver."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsbMtpMode()Z
    .locals 6

    .prologue
    .line 1277
    const/4 v0, 0x1

    .line 1280
    .local v0, "bRtn":Z
    :try_start_0
    const-string v3, "persist.pantech.usb.mtp_mode"

    iget-object v4, p0, Lcom/android/server/PstManagerService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mtp"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "usbModeKey":Ljava/lang/String;
    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemProperies ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-string v3, "persist.pantech.usb.current"

    const-string v4, "mtp_mode"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v3, "PstManagerService"

    const-string v4, "SystemProperies.set =persist.pantech.usb.current, mtp_mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v3, "persist.pantech.usb.default"

    const-string v4, "mtp_mode"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v3, "PstManagerService"

    const-string v4, "SystemProperies.set =persist.pantech.usb.default, mtp_mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    sget-boolean v3, Lcom/android/server/PstManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentFunctionForOnlyPPST => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    .end local v2    # "usbModeKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1291
    :catch_0
    move-exception v1

    .line 1292
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1293
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsbPcMode()Z
    .locals 6

    .prologue
    .line 1300
    const/4 v0, 0x1

    .line 1303
    .local v0, "bRtn":Z
    :try_start_0
    const-string v3, "persist.pantech.usb.pc_mode"

    iget-object v4, p0, Lcom/android/server/PstManagerService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "serial,diag,obex"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, "usbModeKey":Ljava/lang/String;
    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SystemProperies ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v3, "persist.pantech.usb.current"

    const-string v4, "pc_mode"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v3, "PstManagerService"

    const-string v4, "SystemProperies.set =persist.pantech.usb.current, pc_mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v3, "persist.pantech.usb.default"

    const-string v4, "pc_mode"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v3, "PstManagerService"

    const-string v4, "SystemProperies.set =persist.pantech.usb.default, pc_mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    sget-boolean v3, Lcom/android/server/PstManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PstManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentFunctionForOnlyPPST => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    .end local v2    # "usbModeKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1317
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startAutoCallCaller(Ljava/lang/String;)J
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1093
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_0

    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(+)startAutoCallCaller number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1096
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1099
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PstManagerService;->isAutoCall:Z

    .line 1101
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/PstManagerService;->isAutoCall:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 1103
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_2

    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(-)startAutoCallCaller number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_2
    iget-wide v2, p0, Lcom/android/server/PstManagerService;->end_time:J

    iget-wide v4, p0, Lcom/android/server/PstManagerService;->start_time:J

    sub-long/2addr v2, v4

    return-wide v2

    .line 1108
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_3
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PstManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PstManagerService;->start_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PstManagerService;->end_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public startAutoCallReceiver(II)J
    .locals 5
    .param p1, "answer_delay"    # I
    .param p2, "end_delay"    # I

    .prologue
    .line 1117
    sget-boolean v1, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v1, :cond_0

    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(+)startAutoCallReceiver answer_delay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end_delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    if-lez p1, :cond_1

    iput p1, p0, Lcom/android/server/PstManagerService;->answer_delay_time:I

    .line 1120
    :goto_0
    if-lez p2, :cond_2

    iput p2, p0, Lcom/android/server/PstManagerService;->end_delay_time:I

    .line 1122
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PstManagerService;->isAutoAnswer:Z

    .line 1123
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/PstManagerService;->isAutoAnswer:Z

    if-eqz v1, :cond_3

    .line 1125
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1119
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/PstManagerService;->answer_delay_time:I

    goto :goto_0

    .line 1121
    :cond_2
    const v1, 0xea60

    iput v1, p0, Lcom/android/server/PstManagerService;->end_delay_time:I

    goto :goto_1

    .line 1130
    :cond_3
    sget-boolean v1, Lcom/android/server/PstManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "PstManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/PstManagerService;->start_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/PstManagerService;->end_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_4
    sget-boolean v1, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v1, :cond_5

    const-string v1, "PstManagerService"

    const-string v2, "(-)startAutoCallReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_5
    iget-wide v1, p0, Lcom/android/server/PstManagerService;->end_time:J

    iget-wide v3, p0, Lcom/android/server/PstManagerService;->start_time:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public stopAutoCall()Z
    .locals 6

    .prologue
    const/16 v5, 0x3e9

    const/16 v4, 0x3e8

    .line 1136
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_0

    const-string v2, "PstManagerService"

    const-string v3, "(+)stopAutoCall"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1138
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1143
    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1144
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_4

    .line 1145
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :cond_2
    const/4 v2, 0x1

    .line 1154
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_1
    return v2

    .line 1139
    :cond_3
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/android/server/PstManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1148
    .restart local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :try_start_1
    const-string v2, "PstManagerService"

    const-string v3, "Unable to find ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1153
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_2
    sget-boolean v2, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v2, :cond_5

    const-string v2, "PstManagerService"

    const-string v3, "(-)stopAutoCall"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PstManagerService;->mSystemReady:Z

    .line 238
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PstManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/PstManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/PstManagerService;->updateWifiState()V

    .line 240
    return-void
.end method

.method public unlockRemoteCtrl()Z
    .locals 11

    .prologue
    .line 1355
    const/4 v1, 0x1

    .line 1356
    .local v1, "bResult":Z
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 1357
    .local v3, "mSocket":Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v8, "pam_server_uds"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v8, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1359
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const-string v4, "DMS_INIT:SKY\u0000"

    .line 1360
    .local v4, "message":Ljava/lang/String;
    const/16 v8, 0x400

    new-array v5, v8, [B

    .line 1363
    .local v5, "rbuffer":[B
    const-string v8, "PstManagerService"

    const-string v9, "connect pam_server_uds for remote unlock"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1366
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 1368
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 1370
    .local v6, "read_cnt":I
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    .line 1371
    if-lez v6, :cond_0

    .line 1372
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .line 1373
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1374
    const-string v8, "PstManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const-string v8, "SKY"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 1377
    const/4 v1, 0x1

    .line 1389
    .end local v6    # "read_cnt":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1379
    .restart local v6    # "read_cnt":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1383
    .end local v6    # "read_cnt":I
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1385
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1386
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateWifiState()V
    .locals 2

    .prologue
    .line 447
    sget-boolean v0, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v0, :cond_0

    const-string v0, "PstManagerService"

    const-string v1, "(+)updateWifiState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PstManagerService;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 449
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PstManagerService;->networkInfo:Landroid/net/NetworkInfo;

    .line 450
    iget-object v0, p0, Lcom/android/server/PstManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PstManagerService;->mIsWifiEnabled:Z

    .line 451
    sget-boolean v0, Lcom/android/server/PstManagerService;->DEBUG_FUNCTION:Z

    if-eqz v0, :cond_1

    const-string v0, "PstManagerService"

    const-string v1, "(-)updateWifiState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    return-void
.end method

.method public wipeData(I)Z
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 402
    const/4 v4, 0x0

    .line 420
    .local v4, "rslt":Z
    const-string v8, ""

    const-string v9, "vold.decrypt"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v6

    .line 421
    .local v3, "isExtStorageEncrypted":Z
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    move v1, v6

    .line 422
    .local v1, "forceExtWipe":Z
    :goto_1
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_3

    move v5, v6

    .line 425
    .local v5, "wipeExtRequested":Z
    :goto_2
    if-nez v1, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 426
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 428
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 429
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 430
    const/4 v4, 0x1

    .line 440
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_3
    return v4

    .end local v1    # "forceExtWipe":Z
    .end local v3    # "isExtStorageEncrypted":Z
    .end local v5    # "wipeExtRequested":Z
    :cond_1
    move v3, v7

    .line 420
    goto :goto_0

    .restart local v3    # "isExtStorageEncrypted":Z
    :cond_2
    move v1, v7

    .line 421
    goto :goto_1

    .restart local v1    # "forceExtWipe":Z
    :cond_3
    move v5, v7

    .line 422
    goto :goto_2

    .line 433
    .restart local v5    # "wipeExtRequested":Z
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PstManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    const/4 v4, 0x1

    goto :goto_3

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "PstManagerService"

    const-string v7, "Failed requesting data wipe"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
