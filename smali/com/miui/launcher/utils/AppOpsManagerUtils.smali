.class public Lcom/miui/launcher/utils/AppOpsManagerUtils;
.super Ljava/lang/Object;
.source "AppOpsManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteOpNoThrow(Landroid/content/Context;IILjava/lang/String;)I
    .locals 1

    const-string v0, "appops"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p0

    return p0
.end method
