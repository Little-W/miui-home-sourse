.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;->f$0:Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;->f$0:Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;->lambda$captureHeap$1$SecretCodeBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method
