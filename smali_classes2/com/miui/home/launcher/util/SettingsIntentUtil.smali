.class public Lcom/miui/home/launcher/util/SettingsIntentUtil;
.super Ljava/lang/Object;
.source "SettingsIntentUtil.java"


# static fields
.field public static final INPUT_SETTINGS_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.securitycore"

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.miinput"

    .line 12
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/util/SettingsIntentUtil;->INPUT_SETTINGS_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public static getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.miinput.keyshortcut.KeyShortcutActivity"

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.miui.miinput.disablebutton.AutoDisableScreenButtonsAppListSettingsActivity"

    if-eqz v2, :cond_0

    const-string v2, ":settings:show_fragment"

    .line 29
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 34
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/util/SettingsIntentUtil;->INPUT_SETTINGS_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
