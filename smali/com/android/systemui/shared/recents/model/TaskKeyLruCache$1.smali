.class Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;
.super Landroid/util/LruCache;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "TV;TV;)V"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$100(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-interface {p1, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;->onEntryEvicted(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$100(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
