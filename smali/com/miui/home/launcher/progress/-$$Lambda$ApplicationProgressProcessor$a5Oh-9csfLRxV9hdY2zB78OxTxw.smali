.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$3:I

    iput-object p5, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$3:I

    iget-object v4, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$a5Oh-9csfLRxV9hdY2zB78OxTxw;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->lambda$handleProgressUpdate$1(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
