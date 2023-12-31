.class final synthetic Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nwidgetEditSave.kt\nKotlin\n*S Kotlin\n*F\n+ 1 widgetEditSave.kt\ncom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,189:1\n181#2,2:190\n181#2,2:192\n181#2,2:194\n181#2,2:196\n181#2,2:198\n181#2,2:200\n181#2,2:202\n181#2,2:204\n*E\n*S KotlinDebug\n*F\n+ 1 widgetEditSave.kt\ncom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt\n*L\n66#1,2:190\n116#1,2:192\n121#1,2:194\n126#1,2:196\n135#1,2:198\n140#1,2:200\n150#1,2:202\n168#1,2:204\n*E\n"
.end annotation


# direct methods
.method public static final getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$localId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEditLocalId"

    .line 97
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

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->getSelectColors()Ljava/util/Map;

    move-result-object p0

    .line 190
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

    .line 67
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

    .line 77
    new-instance v0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;-><init>(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;)V

    check-cast v0, Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 90
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 92
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

    .line 74
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 75
    check-cast p3, Ljava/util/concurrent/Executor;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static final restoreMamlView(Lcom/miui/maml/widget/edit/OneConfig;Lcom/miui/maml/component/MamlView;)V
    .locals 9

    const-string v0, "$this$restoreMamlView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mamlView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextConfig()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v3, :cond_1

    .line 119
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getColorConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v3, :cond_5

    .line 124
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_2
    move v3, v2

    goto :goto_1

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextSizeConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-double v7, v7

    .line 128
    invoke-virtual {p1, v6, v7, v8, v2}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    if-nez v3, :cond_8

    .line 133
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_3

    :cond_8
    :goto_4
    move v3, v2

    goto :goto_3

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getTextFontConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 198
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v3, :cond_b

    .line 138
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_5

    :cond_b
    :goto_6
    move v3, v2

    goto :goto_5

    .line 140
    :cond_c
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getAlignStyleConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    .line 143
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-double v7, v7

    .line 142
    invoke-virtual {p1, v6, v7, v8, v2}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    if-nez v3, :cond_e

    .line 147
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v1

    goto :goto_7

    :cond_e
    :goto_8
    move v3, v2

    goto :goto_7

    .line 149
    :cond_f
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getColorGroupConfig()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restore(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Lcom/miui/maml/component/MamlView;)V

    .line 150
    :cond_10
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getImageConfig()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/maml/component/MamlView;->getVariableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v3, :cond_12

    .line 153
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    move v3, v1

    goto :goto_9

    :cond_12
    :goto_a
    move v3, v2

    goto :goto_9

    .line 155
    :cond_13
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getDateSetConfig()Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 156
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v4, v4

    .line 157
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getDate()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {p1, v6, v7, v8, v2}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    if-nez v3, :cond_15

    .line 158
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getDate()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_14

    goto :goto_b

    :cond_14
    move v3, v1

    goto :goto_c

    :cond_15
    :goto_b
    move v3, v2

    .line 159
    :goto_c
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 160
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    .line 162
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatValue()I

    move-result v6

    int-to-double v6, v6

    .line 161
    invoke-virtual {p1, v5, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    if-nez v3, :cond_17

    .line 165
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->getRepeatValue()I

    move-result v0

    if-eq v4, v0, :cond_16

    goto :goto_d

    :cond_16
    move v0, v1

    goto :goto_e

    :cond_17
    :goto_d
    move v0, v2

    :goto_e
    move v3, v0

    .line 168
    :cond_18
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/OneConfig;->getOnOffConfig()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 204
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/miui/maml/component/MamlView;->getVariableNumber(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-double v6, v5

    invoke-virtual {p1, v0, v6, v7, v2}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    if-nez v3, :cond_1a

    if-eq v4, v5, :cond_19

    goto :goto_10

    :cond_19
    move v3, v1

    goto :goto_f

    :cond_1a
    :goto_10
    move v3, v2

    goto :goto_f

    :cond_1b
    if-eqz v3, :cond_1c

    const-string p0, "mamlWidgetSdk"

    const-string v0, "edit changed, send refresh_after_edit"

    .line 175
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "refresh_after_edit"

    .line 176
    invoke-virtual {p1, p0}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static final setInPreviewMode(Lcom/miui/maml/component/MamlView;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "$this$setInPreviewMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v1, "isPreviewMode"

    .line 105
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$localId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEditLocalId"

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
