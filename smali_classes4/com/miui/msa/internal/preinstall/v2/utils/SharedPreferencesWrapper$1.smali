.class Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$1;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$1;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$1;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->access$000(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SharedPreferencesWrapper"

    const-string v1, "mSyncWriteTask e:"

    .line 40
    invoke-static {v0, v1, p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
