.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field private final synthetic f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;->f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;->f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->lambda$handleProgressUpdate$1$ApplicationProgressProcessor(Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V

    return-void
.end method
