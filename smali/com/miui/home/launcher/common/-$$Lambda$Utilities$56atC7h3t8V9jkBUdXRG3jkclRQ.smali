.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$56atC7h3t8V9jkBUdXRG3jkclRQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$56atC7h3t8V9jkBUdXRG3jkclRQ;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$56atC7h3t8V9jkBUdXRG3jkclRQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$56atC7h3t8V9jkBUdXRG3jkclRQ;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$56atC7h3t8V9jkBUdXRG3jkclRQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->lambda$startFallbackHomeInIdleHander$6(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
