.class public final synthetic Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;->f$0:Landroid/view/View;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
