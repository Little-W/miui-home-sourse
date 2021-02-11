.class public Lcom/miui/home/launcher/util/ViewCompat;
.super Landroidx/core/view/ViewCompat;
.source "ViewCompat.java"


# direct methods
.method public static notifyChildOfDragStart(Landroid/view/View;)V
    .locals 8

    .line 10
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "notifyChildOfDragStart"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 11
    invoke-static {v3, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
