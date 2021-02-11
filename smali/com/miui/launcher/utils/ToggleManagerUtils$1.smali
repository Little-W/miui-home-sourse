.class final Lcom/miui/launcher/utils/ToggleManagerUtils$1;
.super Ljava/lang/Object;
.source "ToggleManagerUtils.java"

# interfaces
.implements Lmiui/app/ToggleManager$OnToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/ToggleManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .locals 3

    .line 31
    invoke-static {}, Lcom/miui/launcher/utils/ToggleManagerUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/miui/launcher/utils/ToggleManagerUtils;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v2, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_0

    .line 38
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
