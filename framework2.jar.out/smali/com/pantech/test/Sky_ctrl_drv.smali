.class public Lcom/pantech/test/Sky_ctrl_drv;
.super Ljava/lang/Object;
.source "Sky_ctrl_drv.java"


# static fields
.field public static final FACTORY_CABLE:I = 0x2

.field public static final FSM_STATE_ATC_2A:I = 0x2

.field public static final FSM_STATE_ATC_2B:I = 0x12

.field public static final FSM_STATE_ATC_FAIL_4:I = 0x4

.field public static final FSM_STATE_ATC_PAUSE_13:I = 0xd

.field public static final FSM_STATE_BATFETDET_END_16:I = 0x10

.field public static final FSM_STATE_BATFETDET_START_12:I = 0xc

.field public static final FSM_STATE_CHG_FAIL_9:I = 0x9

.field public static final FSM_STATE_DELAY_5:I = 0x5

.field public static final FSM_STATE_EOC_10:I = 0xa

.field public static final FSM_STATE_FAST_CHG_7:I = 0x7

.field public static final FSM_STATE_FAST_CHG_PAUSE_14:I = 0xe

.field public static final FSM_STATE_FLCB:I = 0x16

.field public static final FSM_STATE_FLCB_VREGOK:I = 0x15

.field public static final FSM_STATE_OFF_0:I = 0x0

.field public static final FSM_STATE_ON_BAT_3:I = 0x3

.field public static final FSM_STATE_ON_CHG_AND_BAT_6:I = 0x6

.field public static final FSM_STATE_ON_CHG_HIGHI_1:I = 0x1

.field public static final FSM_STATE_ON_CHG_VREGOK_11:I = 0xb

.field public static final FSM_STATE_START_BOOT:I = 0x14

.field public static final FSM_STATE_TRKL_CHG_8:I = 0x8

.field public static final FSM_STATE_TRKL_CHG_PAUSE_15:I = 0xf

.field public static final INVALID_CABLE:I = 0x6

.field public static final NO_CABLE:I = 0x0

.field public static final REQ_CMD_LCD_FORCE_ONOFF_SET:I = 0x1

.field public static final REQ_CMD_LCD_RESET:I = 0x0

.field public static final STANDARD_CABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "sky ctrl driver"

.field public static final TA_CABLE:I = 0x3

.field public static final TOUCH_IOCTL_INIT:I = 0xbb9

.field public static final TOUCH_IOCTL_OFF:I = 0xbba

.field public static final TOUCH_IOCTL_RESUME:I = 0x1773

.field public static final TOUCH_IOCTL_SUSPEND:I = 0x1772

.field public static final UNKNOWN_CABLE:I = 0x5

.field public static final WIRELESS_CABLE:I = 0x4


# instance fields
.field public charging_setting:Z

.field public factory_cable_enable:Z

.field public mAICL:I

.field public mBattId:D

.field public mCableId:D

.field public mCableType:I

.field public mFSMState:I

.field public mIbattcurr:I

.field public mIbattmax:I

.field public mIchg:I

.field public mIinlim:I

.field public mIusbmax:I

.field public pm_chg_test:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-string v0, "sky_ctrl_drv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native java_TouchConfig_debug(I[I)I
.end method

.method static native java_sky_ctrl_Battery(I)I
.end method

.method static native java_sky_ctrl_DebugMessage(II)I
.end method

.method static native java_sky_ctrl_Enable_RAMDump(I)I
.end method

.method static native java_sky_ctrl_Enable_USBDump(I)I
.end method

.method static native java_sky_ctrl_GetUimStatus()I
.end method

.method static native java_sky_ctrl_Result_Gyroscope(I)I
.end method

.method static native java_sky_ctrl_UimDetectCountTest(I)I
.end method

.method static native java_sky_ctrl_android_property_get_value(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native java_sky_ctrl_android_property_set_value(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_charger_plugged(I)I
.end method

.method static native java_sky_ctrl_device_event_time_get(I)I
.end method

.method static native java_sky_ctrl_dialer_app(I)I
.end method

.method static native java_sky_ctrl_earjack_plugged(I)I
.end method

.method static native java_sky_ctrl_efs_erase(I)V
.end method

.method static native java_sky_ctrl_fingerprint(II)I
.end method

.method static native java_sky_ctrl_get_Battery(I)I
.end method

.method static native java_sky_ctrl_get_cabc()Ljava/lang/String;
.end method

.method static native java_sky_ctrl_get_cmds()Ljava/lang/String;
.end method

.method static native java_sky_ctrl_get_curr_gpio(I)I
.end method

.method static native java_sky_ctrl_get_eco()I
.end method

.method static native java_sky_ctrl_get_hbm()Ljava/lang/String;
.end method

.method static native java_sky_ctrl_get_sharpness()I
.end method

.method static native java_sky_ctrl_get_sleep_gpio(I)I
.end method

.method static native java_sky_ctrl_get_test_reboot(I)I
.end method

.method static native java_sky_ctrl_gpio_keys(II)I
.end method

.method static native java_sky_ctrl_gpio_set(I)I
.end method

.method static native java_sky_ctrl_gpio_switch(II)I
.end method

.method static native java_sky_ctrl_lcd(II)I
.end method

.method static native java_sky_ctrl_led(II)I
.end method

.method static native java_sky_ctrl_led_debug(I[I)I
.end method

.method static native java_sky_ctrl_mdm_prevent_upgrade(I)I
.end method

.method static native java_sky_ctrl_oj(I)I
.end method

.method static native java_sky_ctrl_patternunlock(I)I
.end method

.method static native java_sky_ctrl_pdl(I)I
.end method

.method static native java_sky_ctrl_read_device(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_read_rtc()J
.end method

.method static native java_sky_ctrl_self_Gyroscope(I)I
.end method

.method static native java_sky_ctrl_self_upgrade(I)I
.end method

.method static native java_sky_ctrl_send_cmds(I[I)I
.end method

.method static native java_sky_ctrl_set_backlight_cmds(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_set_cabc(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_set_cmds(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_set_eco(I)I
.end method

.method static native java_sky_ctrl_set_hbm(Ljava/lang/String;)I
.end method

.method static native java_sky_ctrl_set_sharpness(I)I
.end method

.method static native java_sky_ctrl_set_test_reboot(I)I
.end method

.method static native java_sky_ctrl_smart_dm_get_value()I
.end method

.method static native java_sky_ctrl_smart_dm_set_value(I)I
.end method

.method static native java_sky_ctrl_tm(II)I
.end method

.method static native java_sky_ctrl_tm_with_arg_array(I[I)I
.end method

.method static native java_sky_ctrl_touch(II)I
.end method

.method static native java_sky_ctrl_touch_area(I)I
.end method

.method static native java_sky_ctrl_touch_cal_ctrl(I)I
.end method

.method static native java_sky_ctrl_touch_update(I[B)I
.end method

.method static native java_sky_ctrl_usb3_debug_mask_get_value(I)Ljava/lang/String;
.end method

.method static native java_sky_ctrl_usb3_debug_mask_set_value(II)I
.end method

.method static native java_sky_ctrl_usb_carrier_control_set_value(I)I
.end method

.method static native java_sky_ctrl_usb_cdfree_control_set_value(I)I
.end method

.method static native java_sky_ctrl_usb_factory_mode_get_value(I)I
.end method

.method static native java_sky_ctrl_usb_factory_mode_set_value(I)I
.end method

.method static native java_sky_ctrl_usb_manager_get_value(I)I
.end method

.method static native java_sky_ctrl_usb_manager_set_default_value(I)I
.end method

.method static native java_sky_ctrl_usb_manager_set_value(I)I
.end method

.method static native java_sky_ctrl_write_device(Ljava/lang/String;I)I
.end method

.method public static native native_ChargerMonitor_Set_PmChgTest(Z)V
.end method

.method public static native native_ChargerMonitor_Set_chargingSetting(Z)V
.end method

.method public static native native_ChargerMonitor_Set_factorycable(Z)V
.end method

.method public static native native_ChargingTest_Ctrl(Z)V
.end method

.method public static native native_ChargingTest_get_ctrl()Z
.end method


# virtual methods
.method public Sky_Ctrl_Android_Property_Get_Value(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_android_property_get_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_Ctrl_Android_Property_Set_Value(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_android_property_set_value(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Battery(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 401
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_Battery(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Charger_Plugged(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 322
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_charger_plugged(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_DebugMessage(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "value"    # I

    .prologue
    .line 276
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_DebugMessage(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Dialer_App(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 286
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_dialer_app(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Earjack_Plugged(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 328
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_earjack_plugged(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Efs_Erase(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 271
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_efs_erase(I)V

    .line 272
    return-void
.end method

.method public Sky_Ctrl_GetUimStatus()I
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_GetUimStatus()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Battery(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_Battery(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Cabc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_cabc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_Ctrl_Get_Cmds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_cmds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_Ctrl_Get_Curr_Gpio(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 351
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_curr_gpio(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Eco()I
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_eco()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Hbm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_hbm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_Ctrl_Get_Result_Gyroscope()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_Result_Gyroscope(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Sharpness()I
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_sharpness()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Sleep_Gpio(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 356
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_sleep_gpio(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Get_Test_Reboot()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_get_test_reboot(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Gpio_Set(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 346
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_gpio_set(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Lcd(II)I
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 316
    const-string v0, "sky ctrl driver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LIVED] Sky_Ctrl_Lcd cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_lcd(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Led(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_led(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Led_debug(I[I)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # [I

    .prologue
    .line 310
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_led_debug(I[I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Led_with_data(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .prologue
    .line 305
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_led(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Mdm_Prevent_Upgrade(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 535
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_mdm_prevent_upgrade(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_OJ(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 281
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_oj(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_PDL(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 266
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_pdl(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_PatternUnlock(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 261
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_patternunlock(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Read_Device(Ljava/lang/String;)I
    .locals 1
    .param p1, "devfile"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_read_device(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Read_Rtc()J
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_read_rtc()J

    move-result-wide v0

    return-wide v0
.end method

.method public Sky_Ctrl_Self_Gyroscope(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 392
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_self_Gyroscope(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Self_Upgrade(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 375
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_self_upgrade(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Send_Cmds(I[I)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # [I

    .prologue
    .line 514
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_send_cmds(I[I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Backlight_Cmds(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_backlight_cmds(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Cabc(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_cabc(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Cmds(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_cmds(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Eco(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 541
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_eco(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Hbm(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_hbm(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Sharpness(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 503
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_sharpness(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Set_Test_Reboot(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 291
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_set_test_reboot(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Smart_Dm_Get_Value()I
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_smart_dm_get_value()I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Smart_Dm_Set_Value(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 466
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_smart_dm_set_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_Area(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 360
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch_area(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_Update(I[B)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # [B

    .prologue
    .line 411
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch_update(I[B)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_With_Arg(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Touch_cal_ctrl(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 334
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_touch_cal_ctrl(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_UimDetectCountTest(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 369
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_UimDetectCountTest(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb3_Debug_Mask_Get_Value(I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 462
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb3_debug_mask_get_value(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Sky_Ctrl_Usb3_Debug_Mask_Set_Value(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "value"    # I

    .prologue
    .line 458
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb3_debug_mask_set_value(II)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Carrier_Control_Set_Value(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 438
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_carrier_control_set_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Cdfree_Control_Set_Value(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 434
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_cdfree_control_set_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Factory_Mode_Get_Value(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 442
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_factory_mode_get_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Factory_Mode_Set_Value(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 446
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_factory_mode_set_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Manager_Get_Value(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 426
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_manager_get_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Manager_Set_Default_Value(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 430
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_manager_set_default_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Usb_Manager_Set_Value(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 422
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_usb_manager_set_value(I)I

    move-result v0

    return v0
.end method

.method public Sky_Ctrl_Write_Device(Ljava/lang/String;I)I
    .locals 3
    .param p1, "devfile"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 381
    const-string v0, "Sky_ctrl_drv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky_Ctrl_Write_Device :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_write_device(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Sky_TouchConfig_debug(I[I)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "data"    # [I

    .prologue
    .line 475
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_TouchConfig_debug(I[I)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_device_event_time_get(I)J
    .locals 2
    .param p1, "cmd"    # I

    .prologue
    .line 340
    invoke-static {p1}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_device_event_time_get(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public Sky_ctrl_fingerprint(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_fingerprint(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_gpio_keys(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .prologue
    .line 242
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_gpio_keys(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_gpio_switch(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_gpio_switch(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_gpio_switch(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .prologue
    .line 253
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_gpio_switch(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_tm(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_tm(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_tm(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # I

    .prologue
    .line 231
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_tm(II)I

    move-result v0

    return v0
.end method

.method public Sky_ctrl_tm(I[I)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "arg"    # [I

    .prologue
    .line 235
    invoke-static {p1, p2}, Lcom/pantech/test/Sky_ctrl_drv;->java_sky_ctrl_tm_with_arg_array(I[I)I

    move-result v0

    return v0
.end method

.method public native native_ChargerMonitor_start()V
.end method

.method public native native_ChargerMonitor_stop()V
.end method

.method public native native_ChargerMonitor_update()V
.end method
