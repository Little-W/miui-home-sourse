.class Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getFloat(Ljava/lang/String;F)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

.field final synthetic val$def:F

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;F)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->val$def:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->this$0:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->access$100(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->val$key:Ljava/lang/String;

    iget p0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->val$def:F

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 121
    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;->call()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
