.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$2:F

.field private final synthetic f$3:F

.field private final synthetic f$4:F

.field private final synthetic f$5:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$1:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$3:F

    iput p5, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$4:F

    iput-object p6, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$5:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$1:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$2:F

    iget v3, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$3:F

    iget v4, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$4:F

    iget-object v5, p0, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;->f$5:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->lambda$updateAllAnimValues$3$RectFSpringAnim(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    return-void
.end method
