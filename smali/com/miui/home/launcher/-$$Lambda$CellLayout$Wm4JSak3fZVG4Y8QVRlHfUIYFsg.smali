.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$Wm4JSak3fZVG4Y8QVRlHfUIYFsg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Wm4JSak3fZVG4Y8QVRlHfUIYFsg;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Wm4JSak3fZVG4Y8QVRlHfUIYFsg;->f$0:Z

    check-cast p1, Lcom/miui/home/launcher/interfaces/IEditable;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setEditMode$0(ZLcom/miui/home/launcher/interfaces/IEditable;)V

    return-void
.end method
