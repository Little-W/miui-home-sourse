.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$USLMf1boCFlWCbJhW19JaH6GnLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$USLMf1boCFlWCbJhW19JaH6GnLw;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$USLMf1boCFlWCbJhW19JaH6GnLw;->f$0:Landroid/view/View;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$USLMf1boCFlWCbJhW19JaH6GnLw(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
