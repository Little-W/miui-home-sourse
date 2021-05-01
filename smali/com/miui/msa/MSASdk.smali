.class public Lcom/miui/msa/MSASdk;
.super Ljava/lang/Object;
.source "MSASdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->init(Landroid/content/Context;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MSASdk init context can not be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
