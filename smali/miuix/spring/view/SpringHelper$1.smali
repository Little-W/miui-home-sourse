.class Lmiuix/spring/view/SpringHelper$1;
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

    .line 9
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0, p1, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    return-void
.end method


# virtual methods
.method protected canScroll()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->canScrollHorizontally()Z

    move-result v0

    return v0
.end method

.method protected getSize()I
    .locals 1

    .line 17
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getWidth()I

    move-result v0

    return v0
.end method
