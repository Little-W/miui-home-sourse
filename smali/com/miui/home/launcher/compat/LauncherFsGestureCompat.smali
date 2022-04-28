.class public Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;
.super Ljava/lang/Object;
.source "LauncherFsGestureCompat.java"


# static fields
.field private static final ANIM_COMPAT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v0, "LauncherFsGestureCompat"

    .line 14
    sput-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.android.incallui/.InCallActivity"

    const-string v2, "com.android.contacts/.activities.TwelveKeyDialer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycenter/com.miui.appmanager.ApplicationsDetailsActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycenter/com.miui.antispam.ui.activity.MainActivity"

    const-string v2, "com.android.mms/com.android.mms.ui.MmsTabActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycore/com.miui.xspace.ui.activity.XSpaceSettingActivity"

    const-string v2, "com.android.settings/.MainSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.android.updater/.MainActivity"

    const-string v2, "com.android.settings/.MainSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycenter/com.miui.permcenter.permissions.SystemAppPermissionDialogActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.google.android.googlequicksearchbox/com.google.android.apps.gsa.monet.MonetActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securityadd/com.miui.gamebooster.GameBoosterRichWebActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.miui.securitycenter/com.miui.powercenter.legacypowerrank.PowerDetailActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.celltick.lockscreen/.start6.MainActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    const-string v1, "com.celltick.lockscreen/.SplashDismissKeyguardActivity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 32
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "componentName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->ANIM_COMPAT_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method
