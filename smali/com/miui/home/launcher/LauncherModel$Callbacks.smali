.class public interface abstract Lcom/miui/home/launcher/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppWidgetRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindCategoryAdded()V
.end method

.method public abstract bindCategoryNameUpdate()V
.end method

.method public abstract bindCategoryOrderUpdate()V
.end method

.method public abstract bindCategoryRemoved()V
.end method

.method public abstract bindCategoryUpdate(I)V
.end method

.method public abstract bindFreeStyleLoaded(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
.end method

.method public abstract bindItem(Lcom/miui/home/launcher/ItemInfo;)V
.end method

.method public abstract bindMamlWidgetRemoved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindScreenAdded(JII)V
.end method

.method public abstract bindScreenRemoved(J)V
.end method

.method public abstract bindScreenTrim()V
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract finishBindingMissingItems()V
.end method

.method public abstract finishBindingSavedItems()V
.end method

.method public abstract finishLoading(ZZ)V
.end method

.method public abstract prepareBeforeBindItems()V
.end method

.method public abstract removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
.end method

.method public abstract startBinding()V
.end method

.method public abstract startLoading()V
.end method

.method public abstract updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
.end method
