.class Lmiuix/spring/view/SpringHelper$2;
.super Lmiuix/spring/view/SpringHelper$AxisHandler;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/view/SpringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0, p1, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    return-void
.end method


# virtual methods
.method protected canScroll()Z
    .locals 0

    .line 30
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->canScrollVertically()Z

    move-result p0

    return p0
.end method

.method protected getSize()I
    .locals 0

    .line 35
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHeight()I

    move-result p0

    return p0
.end method

.method onFlingReachEdge()V
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    return-void
.end method
