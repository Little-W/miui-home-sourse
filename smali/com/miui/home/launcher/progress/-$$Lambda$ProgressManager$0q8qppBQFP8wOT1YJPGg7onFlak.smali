.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$0q8qppBQFP8wOT1YJPGg7onFlak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ProgressManager;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ProgressManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$0q8qppBQFP8wOT1YJPGg7onFlak;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$0q8qppBQFP8wOT1YJPGg7onFlak;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->lambda$onReceive$0(Lcom/miui/home/launcher/progress/ProgressManager;)V

    return-void
.end method
