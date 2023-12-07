.class Lcom/miui/home/launcher/util/Provider$1;
.super Lcom/miui/home/launcher/util/Provider;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/Provider;->of(Ljava/lang/Object;)Lcom/miui/home/launcher/util/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/util/Provider$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/home/launcher/util/Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/util/Provider$1;->val$value:Ljava/lang/Object;

    return-object p0
.end method
