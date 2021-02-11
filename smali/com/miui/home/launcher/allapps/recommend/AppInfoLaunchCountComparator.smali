.class public Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;
.super Ljava/lang/Object;
.source "AppInfoLaunchCountComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOCK:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final FACEBOOK_MESSENGER:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final GOOGLE_MAIL:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final GOOGLE_MAP:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final GOOGLE_PHOTO:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final INSTAGRAM:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final MI_DROP:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final MI_DROP_NEW:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final MI_FILE_MANAGER_GLOBAL:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final NETFLIX:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final QQ:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final SETTINGS:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final SKYPE:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final SNAP_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final TIK_TOK:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final TINDER:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final TWITTER:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final USER_HANDLE:Landroid/os/UserHandle;

.field private static final WE_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final WHATS_APP:Lcom/miui/home/launcher/util/ComponentKey;

.field private static final YOUTUBE:Lcom/miui/home/launcher/util/ComponentKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.midrop"

    const-string v3, "com.xiaomi.midrop.HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_DROP:Lcom/miui/home/launcher/util/ComponentKey;

    .line 47
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.midrop"

    const-string v3, "com.xiaomi.midrop.SplashScreen"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_DROP_NEW:Lcom/miui/home/launcher/util/ComponentKey;

    .line 48
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mi.android.globalFileexplorer"

    const-string v3, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_FILE_MANAGER_GLOBAL:Lcom/miui/home/launcher/util/ComponentKey;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.MapsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_MAP:Lcom/miui/home/launcher/util/ComponentKey;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.deskclock"

    const-string v3, "com.android.deskclock.DeskClockTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->CLOCK:Lcom/miui/home/launcher/util/ComponentKey;

    .line 51
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MainSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SETTINGS:Lcom/miui/home/launcher/util/ComponentKey;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->QQ:Lcom/miui/home/launcher/util/ComponentKey;

    .line 53
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->WE_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.skype.rader"

    const-string v3, "com.skype.raider.Main"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SKYPE:Lcom/miui/home/launcher/util/ComponentKey;

    .line 55
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.facebook.orca"

    const-string v3, "com.facebook.orca.auth.StartScreenActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->FACEBOOK_MESSENGER:Lcom/miui/home/launcher/util/ComponentKey;

    .line 56
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.netflix.mediaclient"

    const-string v3, "com.netflix.mediaclient.ui.launch.UIWebViewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->NETFLIX:Lcom/miui/home/launcher/util/ComponentKey;

    .line 57
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zhiliaoapp.musically"

    const-string v3, "com.ss.android.ugc.aweme.splash.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TIK_TOK:Lcom/miui/home/launcher/util/ComponentKey;

    .line 58
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tinder"

    const-string v3, "com.tinder.activities.LoginActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TINDER:Lcom/miui/home/launcher/util/ComponentKey;

    .line 59
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.snapchat.android"

    const-string v3, "com.snapchat.android.LandingPageActivityV1"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SNAP_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

    .line 60
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.photos"

    const-string v3, "com.google.android.apps.photos.home.HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_PHOTO:Lcom/miui/home/launcher/util/ComponentKey;

    .line 61
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gm"

    const-string v3, "com.google.android.gm.ConversationListActivityGmail"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_MAIL:Lcom/miui/home/launcher/util/ComponentKey;

    .line 62
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.twitter.android"

    const-string v3, "com.twitter.android.StartActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TWITTER:Lcom/miui/home/launcher/util/ComponentKey;

    .line 63
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.whatsapp"

    const-string v3, "com.whatsapp.Main"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->WHATS_APP:Lcom/miui/home/launcher/util/ComponentKey;

    .line 64
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.instagram.android"

    const-string v3, "com.instagram.android.activity.MainTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->INSTAGRAM:Lcom/miui/home/launcher/util/ComponentKey;

    .line 65
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.youtube"

    const-string v3, "com.google.android.youtube.app.honeycomb.Shell$HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->YOUTUBE:Lcom/miui/home/launcher/util/ComponentKey;

    .line 66
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.facebook.katana"

    const-string v3, "com.facebook.katana.LoginActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->FACEBOOK:Lcom/miui/home/launcher/util/ComponentKey;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    .line 70
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_DROP:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_DROP_NEW:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->MI_FILE_MANAGER_GLOBAL:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_MAP:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->CLOCK:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SETTINGS:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->QQ:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->WE_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SKYPE:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->FACEBOOK_MESSENGER:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->NETFLIX:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TIK_TOK:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TINDER:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->SNAP_CHAT:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_PHOTO:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->GOOGLE_MAIL:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->TWITTER:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->WHATS_APP:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->INSTAGRAM:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->YOUTUBE:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->FACEBOOK:Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I
    .locals 5

    .line 16
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getLastTimeUsed()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2

    return v1

    .line 26
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getAppLaunchCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    return v2

    .line 29
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 30
    sget-object v3, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->DEFAULT_RECOMMEND_APPS:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v0, :cond_4

    if-ltz v3, :cond_4

    .line 32
    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_4
    if-ltz v0, :cond_5

    return v1

    :cond_5
    if-ltz v3, :cond_6

    return v2

    .line 40
    :cond_6
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getLastTimeUsed()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/recommend/AppInfoLaunchCountComparator;->compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I

    move-result p1

    return p1
.end method
