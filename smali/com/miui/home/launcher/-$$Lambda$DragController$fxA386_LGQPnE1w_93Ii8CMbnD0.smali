.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragController$fxA386_LGQPnE1w_93Ii8CMbnD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$fxA386_LGQPnE1w_93Ii8CMbnD0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$fxA386_LGQPnE1w_93Ii8CMbnD0;->f$0:I

    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/DragController;->lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V

    return-void
.end method
