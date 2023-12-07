.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$6GtcJqQzUngqEFAeNNOM2Z6wsV8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$6GtcJqQzUngqEFAeNNOM2Z6wsV8;->f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$TaskStackChangeListeners$6GtcJqQzUngqEFAeNNOM2Z6wsV8;->f$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->lambda$unregisterTaskStackListener$0(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
