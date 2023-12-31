.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$1:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$3:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$1:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$2:I

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$W2u1RDTW8lpQw8LOTYIWM_v6Exc;->f$3:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/NavStubView;->lambda$performHalfAppToHalfApp$52$NavStubView(Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V

    return-void
.end method
