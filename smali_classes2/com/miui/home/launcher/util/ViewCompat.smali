.class public Lcom/miui/home/launcher/util/ViewCompat;
.super Landroidx/core/view/ViewCompat;
.source "ViewCompat.java"


# direct methods
.method public static notifyChildOfDragStart(Landroid/view/View;)V
    .locals 7

    .line 10
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v6

    const-string v2, "notifyChildOfDragStart"

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
