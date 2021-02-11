.class Lcom/miui/home/smallwindow/SmallWindowEditView$1;
.super Ljava/lang/Object;
.source "SmallWindowEditView.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/SmallWindowEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowEditView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {p2}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$000(Lcom/miui/home/smallwindow/SmallWindowEditView;)Ljava/util/Map;

    move-result-object p2

    monitor-enter p2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$000(Lcom/miui/home/smallwindow/SmallWindowEditView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 35
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {p2}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$000(Lcom/miui/home/smallwindow/SmallWindowEditView;)Ljava/util/Map;

    move-result-object p2

    monitor-enter p2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$000(Lcom/miui/home/smallwindow/SmallWindowEditView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
