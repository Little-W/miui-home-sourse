.class public final Lcom/miui/maml/widget/edit/WidgetEditSave;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# static fields
.field public static final COMMAND_REFRESH_AFTER_EDIT:Ljava/lang/String; = "refresh_after_edit"


# direct methods
.method public static final getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final restore(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Lcom/miui/maml/component/MamlView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->restore(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Lcom/miui/maml/component/MamlView;)V

    return-void
.end method

.method public static final restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath$default(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;ILjava/lang/Object;)V

    return-void
.end method

.method public static final restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath$default(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;ILjava/lang/Object;)V

    return-void
.end method

.method public static final restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic restoreFromConfigPath$default(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->restoreFromConfigPath$default(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;ILjava/lang/Object;)V

    return-void
.end method

.method public static final restoreMamlView(Lcom/miui/maml/widget/edit/OneConfig;Lcom/miui/maml/component/MamlView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->restoreMamlView(Lcom/miui/maml/widget/edit/OneConfig;Lcom/miui/maml/component/MamlView;)V

    return-void
.end method

.method public static final setInPreviewMode(Lcom/miui/maml/component/MamlView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->setInPreviewMode(Lcom/miui/maml/component/MamlView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    return-void
.end method
