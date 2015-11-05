.class Landroid/preference/RingtonePreference$1;
.super Landroid/os/Handler;
.source "RingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/RingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/RingtonePreference;


# direct methods
.method constructor <init>(Landroid/preference/RingtonePreference;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 168
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    invoke-virtual {v2, v0}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 170
    iget-object v2, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v1

    .line 171
    .local v1, "owningFragment":Landroid/preference/PreferenceFragment;
    if-eqz v1, :cond_0

    .line 172
    iget-object v2, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    # getter for: Landroid/preference/RingtonePreference;->mRequestCode:I
    invoke-static {v2}, Landroid/preference/RingtonePreference;->access$000(Landroid/preference/RingtonePreference;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/RingtonePreference$1;->this$0:Landroid/preference/RingtonePreference;

    # getter for: Landroid/preference/RingtonePreference;->mRequestCode:I
    invoke-static {v3}, Landroid/preference/RingtonePreference;->access$000(Landroid/preference/RingtonePreference;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
