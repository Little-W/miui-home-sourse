.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$0qo6R-xzbiOAk2WPJX6y7zcGl5U;
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

    iput-boolean p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0qo6R-xzbiOAk2WPJX6y7zcGl5U;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0qo6R-xzbiOAk2WPJX6y7zcGl5U;->f$0:Z

    check-cast p1, Lcom/miui/home/launcher/interfaces/IEditable;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setEditMode$1(ZLcom/miui/home/launcher/interfaces/IEditable;)V

    return-void
.end method
