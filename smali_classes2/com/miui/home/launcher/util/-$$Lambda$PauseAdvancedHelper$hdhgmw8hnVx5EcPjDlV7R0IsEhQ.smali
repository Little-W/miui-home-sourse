.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$hdhgmw8hnVx5EcPjDlV7R0IsEhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$hdhgmw8hnVx5EcPjDlV7R0IsEhQ;->f$0:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$hdhgmw8hnVx5EcPjDlV7R0IsEhQ;->f$0:[I

    invoke-static {p0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->lambda$setPauseAdvanced$0([I)V

    return-void
.end method
