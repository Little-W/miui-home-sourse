.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;->f$1:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;->f$1:Lcom/miui/home/launcher/DragObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setCellBackgroundImage$6$CellLayout(Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V

    return-void
.end method
