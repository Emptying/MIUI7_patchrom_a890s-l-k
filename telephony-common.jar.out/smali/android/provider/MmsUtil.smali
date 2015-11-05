.class public Landroid/provider/MmsUtil;
.super Ljava/lang/Object;
.source "MmsUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MmsUtil"

.field private static mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    const-string v1, "ro.debuggable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Landroid/provider/MmsUtil;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatedSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "snippet"    # Ljava/lang/String;
    .param p2, "subMsgType"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/provider/MmsUtil;->getFormatedSnippet(Landroid/content/Context;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedSnippet(Landroid/content/Context;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLocked"    # Z
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "subMsgType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const v3, 0x10406c3

    .line 120
    if-nez p0, :cond_1

    .line 121
    const/4 v1, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v1

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 125
    .local v1, "mFormatedSnippet":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 126
    sparse-switch p3, :sswitch_data_0

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 203
    move-object v1, p2

    goto :goto_0

    .line 129
    :sswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    move-object v1, p2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_0

    .line 139
    :sswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    move-object v1, p2

    goto :goto_0

    .line 142
    :cond_3
    const v2, 0x10406d0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    goto :goto_0

    .line 148
    :sswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 149
    const-string v2, " "

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "formatArr":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 151
    aget-object v1, v0, v5

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    goto :goto_0

    .line 157
    .end local v0    # "formatArr":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    goto :goto_0

    .line 163
    :sswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 164
    const-string v2, "\u000b"

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "formatArr":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_6

    .line 166
    aget-object v1, v0, v5

    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    goto :goto_0

    .line 172
    .end local v0    # "formatArr":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    goto :goto_0

    .line 188
    :sswitch_4
    invoke-static {p0, p3}, Landroid/provider/MmsUtil;->getLGTPushMessageTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 197
    :sswitch_5
    const v2, 0x10406cf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    goto :goto_0

    .line 205
    :cond_8
    const v2, 0x10406c4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    goto/16 :goto_0

    .line 211
    :cond_9
    const v2, 0x10406c5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_5
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x130 -> :sswitch_4
        0x131 -> :sswitch_4
        0x132 -> :sswitch_4
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x135 -> :sswitch_4
        0x136 -> :sswitch_4
        0x137 -> :sswitch_4
        0x139 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getIsSecretApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 36
    const-string v0, "content://com.pantech.app.secret.settings/table_secret_apps_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    .local v1, "APPS_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 41
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v9

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_1
    const-string v7, ""

    .line 45
    .local v7, "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_2

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 50
    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 54
    goto :goto_0
.end method

.method public static getKPASHiddenMenuInfo(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 224
    :try_start_0
    const-string v5, "com.pantech.app.mms"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 225
    .local v3, "mMmsContext":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_preferences"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 226
    sget-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_key_set_message_id_in_KPAS"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "getHiddenMessageID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "mHiddenMessageID":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v8, :cond_0

    .line 231
    const/4 v4, 0x1

    .line 242
    .end local v1    # "getHiddenMessageID":Ljava/lang/String;
    .end local v2    # "mHiddenMessageID":[Ljava/lang/String;
    .end local v3    # "mMmsContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return v4

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Landroid/provider/MmsUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 240
    const-string v5, "MmsUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLGTPushMessageTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subMsgType"    # I

    .prologue
    const v0, 0x10406c6

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 287
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 256
    :pswitch_1
    const v0, 0x10406c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_2
    const v0, 0x10406cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_4
    const v0, 0x10406c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_5
    const v0, 0x10406c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_6
    const v0, 0x10406ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_7
    const v0, 0x10406cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_9
    const v0, 0x10406cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_a
    const v0, 0x10406ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static getMmsLocked(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    :try_start_0
    const-string v5, "com.pantech.app.mms"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 68
    .local v2, "mMmsContext":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_preferences"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    .line 70
    sget-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_key_chatting_style_msg_lock_type"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/provider/MmsUtil;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_key_message_lock_check"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    :cond_0
    const-string v5, "com.pantech.app.mms"

    invoke-static {p0, v5}, Landroid/provider/MmsUtil;->getIsSecretApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 76
    const-string v5, "persist.vega.secretmode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    .local v1, "isSecretMode":I
    if-ne v1, v3, :cond_1

    move v3, v4

    .line 92
    .end local v1    # "isSecretMode":I
    .end local v2    # "mMmsContext":Landroid/content/Context;
    :cond_1
    :goto_0
    return v3

    .restart local v2    # "mMmsContext":Landroid/content/Context;
    :cond_2
    move v3, v4

    .line 84
    goto :goto_0

    .line 88
    .end local v2    # "mMmsContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Landroid/provider/MmsUtil;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 90
    const-string v3, "MmsUtil"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    .line 92
    goto :goto_0
.end method
