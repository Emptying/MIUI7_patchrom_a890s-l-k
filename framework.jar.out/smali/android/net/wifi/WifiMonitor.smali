.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;,
        Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    }
.end annotation


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_FAIL_STR:Ljava/lang/String; = "ASSOC Reject failed - No response from AP"

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field public static final CONFIG_CHANGE_EVENT:I = 0x2400d

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final DBG:Z = true

.field private static final DBG_WIFI:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_BUILD_IDENTITY_STR:Ljava/lang/String; = "eap_sm_buildIdentity len="

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EUCKR_HANGUL_SSID_CONFIG_CHANGE_STR:Ljava/lang/String; = "EUC-kr Hangul Hidden SSID match"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final MONITOR_SOCKET_CLOSED_STR:Ljava/lang/String; = "connection closed"

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_REMOVE_AND_REFORM_GROUP_EVENT:I = 0x24028

.field private static final P2P_REMOVE_AND_REFORM_GROUP_STR:Ljava/lang/String; = "P2P-REMOVE-AND-REFORM-GROUP"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final PSK_NEGO_FAIL_STR:Ljava/lang/String; = "WPA: 4-Way Handshake failed - pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xa

.field private static final WEP_NEGO_FAIL_STR:Ljava/lang/String; = "WEP: Shared WEP failed - wep key may be incorrect"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static bIsIdPassWordConnection:Z

.field private static bIsKtAp:Z

.field private static bIsWPSconnection:Z

.field private static bReceiveEapFailure:Z

.field private static bReceiveEapNotification:Z

.field private static bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z

.field private static bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z

.field private static bReceiveEapRequestAtNotification:Z

.field private static bReceiveEapTimeOut:Z

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static skt_flag:[Ljava/lang/String;


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private mNotiMngr:Landroid/app/NotificationManager;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 224
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 427
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z

    .line 428
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z

    .line 429
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z

    .line 430
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z

    .line 431
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z

    .line 432
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z

    .line 433
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z

    .line 437
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z

    .line 441
    sput-boolean v2, Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z

    .line 447
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiMonitor;->skt_flag:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 2
    .param p1, "wifiStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Landroid/net/wifi/WifiNative;

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 453
    iget-object v0, p2, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    .line 454
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    .line 457
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Landroid/net/wifi/WifiMonitor;)V

    .line 458
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiMonitor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bIsIdPassWordConnection:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bIsWPSconnection:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureAfterAuth:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAkaNotificationATNotificationFailureBeforeAuth:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bIsKtAp:Z

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 80
    sget v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    return v0
.end method

.method static synthetic access$1600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapTimeOut:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapFailure:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapRequestAtNotification:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 80
    sput-boolean p0, Landroid/net/wifi/WifiMonitor;->bReceiveEapNotification:Z

    return p0
.end method


# virtual methods
.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 473
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    .line 474
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 465
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    .line 470
    return-void
.end method
