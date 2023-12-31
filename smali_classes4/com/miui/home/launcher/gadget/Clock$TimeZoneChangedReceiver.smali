.class Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Clock;Lcom/miui/home/launcher/gadget/Clock$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/Clock;->access$000(Lcom/miui/home/launcher/gadget/Clock;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz p1, :cond_1

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/Clock;->access$100(Lcom/miui/home/launcher/gadget/Clock;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
