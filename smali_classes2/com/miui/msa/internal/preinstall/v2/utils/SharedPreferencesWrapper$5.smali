.class Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getLong(Ljava/lang/String;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

.field final synthetic val$def:J

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;J)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->val$def:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->access$100(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->val$key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->val$def:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;->call()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
