.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;->f$0:F

    iput p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;->f$1:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;->f$0:F

    iget v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetHostViewLoader$8KtfrrLlNaaVL8cP9XirPwkbToY;->f$1:F

    check-cast p1, Landroid/util/SizeF;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->lambda$getDefaultOptionsForWidget$0(FFLandroid/util/SizeF;)Landroid/util/SizeF;

    move-result-object p1

    return-object p1
.end method
