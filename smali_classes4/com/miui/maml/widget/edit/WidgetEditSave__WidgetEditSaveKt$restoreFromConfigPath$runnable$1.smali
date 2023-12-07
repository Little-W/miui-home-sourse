.class final Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt;->restoreFromConfigPath(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $configPath:Ljava/lang/String;

.field final synthetic $gson:Lcom/google/gson/Gson;

.field final synthetic $this_restoreFromConfigPath:Lcom/miui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lcom/miui/maml/component/MamlView;Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$this_restoreFromConfigPath:Lcom/miui/maml/component/MamlView;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$configPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$configPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$gson:Lcom/google/gson/Gson;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/miui/maml/widget/edit/OneConfig;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/widget/edit/OneConfig;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", invalid gson. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mamlWidgetSdk"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$this_restoreFromConfigPath:Lcom/miui/maml/component/MamlView;

    new-instance v2, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;-><init>(Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;Lcom/miui/maml/widget/edit/OneConfig;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/miui/maml/component/MamlView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
