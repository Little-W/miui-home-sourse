.class Lcom/miui/launcher/utils/ToggleManagerUtils$1;
.super Ljava/lang/Object;
.source "ToggleManagerUtils.java"

# interfaces
.implements Lmiui/app/ToggleManager$OnToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/ToggleManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/launcher/utils/ToggleManagerUtils;->access$000()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/miui/launcher/utils/ToggleManagerUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
