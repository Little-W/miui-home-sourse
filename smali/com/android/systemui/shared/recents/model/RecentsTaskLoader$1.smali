.class Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryEvicted(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->access$000(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
