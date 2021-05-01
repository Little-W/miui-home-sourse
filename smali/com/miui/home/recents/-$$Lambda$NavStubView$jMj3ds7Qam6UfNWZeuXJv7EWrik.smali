.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$1:F

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$2:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$1:F

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jMj3ds7Qam6UfNWZeuXJv7EWrik;->f$2:Lcom/miui/home/recents/views/TaskView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToRecents$264(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFF)V

    return-void
.end method
