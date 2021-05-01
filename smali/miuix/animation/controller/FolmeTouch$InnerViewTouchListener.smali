.class Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerViewTouchListener"
.end annotation


# instance fields
.field private mTouchMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lmiuix/animation/controller/FolmeTouch;",
            "[",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method varargs addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 403
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/controller/FolmeTouch;

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiuix/animation/base/AnimConfig;

    .line 406
    invoke-static {v2, p1, p2, v1}, Lmiuix/animation/controller/FolmeTouch;->access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
