.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->lambda$get$1$MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
