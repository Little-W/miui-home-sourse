.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$1:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$3:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$1:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$2:I

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xBcsyAwwjAiNT06IC1S2hQAkcHQ;->f$3:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->lambda$null$266(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V

    return-void
.end method
