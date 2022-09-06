.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$BUMow3lrrKCrq4_xehAhUWu0W4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$BUMow3lrrKCrq4_xehAhUWu0W4c;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$BUMow3lrrKCrq4_xehAhUWu0W4c;->f$0:[I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->lambda$getSingleCellLayoutAccessibilityCount$0([ILandroid/view/View;)V

    return-void
.end method
