.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$InstallWidgetReceiver$JtFd72bHmA-6QVBEoFqd4cwsjKc;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/InstallWidgetReceiver;->lambda$onReceive$0$InstallWidgetReceiver(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
