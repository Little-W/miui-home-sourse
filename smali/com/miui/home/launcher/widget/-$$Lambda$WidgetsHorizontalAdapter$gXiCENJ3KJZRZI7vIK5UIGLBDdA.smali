.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$gXiCENJ3KJZRZI7vIK5UIGLBDdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$gXiCENJ3KJZRZI7vIK5UIGLBDdA;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$gXiCENJ3KJZRZI7vIK5UIGLBDdA;->f$0:Ljava/util/concurrent/Callable;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->lambda$setViewHolderAsync$4(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    move-result-object p1

    return-object p1
.end method
