.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;
.super Ljava/lang/Object;
.source "ContextMenuHelper.java"


# static fields
.field private static final getContextMenuInfo:Ljava/lang/reflect/Method;

.field private static final mListenerInfo:Ljava/lang/reflect/Field;

.field private static final mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

.field private static final onCreateContextMenu:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.view.View$ListenerInfo"

    const-string v1, "mOnCreateContextMenuListener"

    .line 18
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    .line 19
    const-class v0, Landroid/view/View;

    const-string v1, "getContextMenuInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    .line 20
    const-class v0, Landroid/view/View;

    const-string v1, "onCreateContextMenu"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/ContextMenu;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    .line 21
    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V
    .locals 4

    .line 27
    sget-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    .line 28
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 29
    sget-object v2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    invoke-static {p0, v1}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v1, p1, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 40
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 41
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V

    :cond_1
    return-void
.end method
