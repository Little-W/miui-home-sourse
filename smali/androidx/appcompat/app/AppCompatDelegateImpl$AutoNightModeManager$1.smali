.class Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->onChange()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
