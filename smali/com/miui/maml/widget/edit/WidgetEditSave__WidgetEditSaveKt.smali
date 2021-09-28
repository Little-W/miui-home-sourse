.class final synthetic Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nwidgetEditSave.kt\nKotlin\n*S Kotlin\n*F\n+ 1 widgetEditSave.kt\ncom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,143:1\n181#2,2:144\n181#2,2:146\n181#2,2:148\n181#2,2:150\n181#2,2:152\n181#2,2:154\n181#2,2:156\n181#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 widgetEditSave.kt\ncom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt\n*L\n62#1,2:144\n100#1,2:146\n103#1,2:148\n106#1,2:150\n109#1,2:152\n112#1,2:154\n116#1,2:156\n128#1,2:158\n*E\n"
.end annotation


# direct methods
.method public static final getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$localId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEditLocalId"

    .line 84
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->getVariableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final restore(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Lcom/miui/maml/component/MamlView;)V
    .locals 3

    const-string v0, "$this$restore"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mamlView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->getSelectColors()Ljava/util/Map;

    move-result-object p0

    .line 144
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
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
    .locals 1

    const-string v0, "$this$restoreFromConfigPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;-><init>(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;)V

    check-cast v0, Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 77
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 79
    :cond_0
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic restoreFromConfigPath$default(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 68
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    check-cast p3, Ljava/util/concurrent/Executor;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static final restoreMamlView(Lcom/miui/maml/widget/edit/OneConfig;Lcom/miui/maml/component/MamlView;)V
    .locals 6

    const-string v0, "$this$restoreMamlView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mamlView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextConfig()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getColorConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextSizeConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual {p1, v3, v4, v5, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextFontConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getAlignStyleConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual {p1, v3, v4, v5, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    goto :goto_4

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getColorGroupConfig()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restore(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Lcom/miui/maml/component/MamlView;)V

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getImageConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getDateSetConfig()Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getDate()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    .line 121
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 123
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatValue()I

    move-result v0

    int-to-double v3, v0

    .line 122
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getOnOffConfig()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 158
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-double v2, v2

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    goto :goto_6

    :cond_8
    return-void
.end method

.method public static final setInPreviewMode(Lcom/miui/maml/component/MamlView;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "$this$setInPreviewMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPreviewMode"

    const/4 v1, 0x1

    .line 94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 92
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$localId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEditLocalId"

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
