.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragController$k7jD1BPyoO3aB6AAzrwq7pcnKKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$k7jD1BPyoO3aB6AAzrwq7pcnKKk;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$k7jD1BPyoO3aB6AAzrwq7pcnKKk;->f$0:I

    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V

    return-void
.end method
