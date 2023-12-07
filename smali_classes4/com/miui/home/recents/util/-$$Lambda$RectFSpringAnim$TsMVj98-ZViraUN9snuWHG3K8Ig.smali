.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$1:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;->f$1:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;->f$1:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$updateEndRectF$2$RectFSpringAnim(Landroid/graphics/RectF;)V

    return-void
.end method
