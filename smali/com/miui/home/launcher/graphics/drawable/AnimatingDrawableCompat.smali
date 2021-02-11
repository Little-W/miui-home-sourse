.class Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;
.super Ljava/lang/Object;
.source "AnimatingDrawableCompat.java"


# static fields
.field private static final CLS:Ljava/lang/Class;

.field private static final SIGNATURE_GET_BOOLEAN:Ljava/lang/String;

.field private static final SIGNATURE_GET_DRAWABLE:Ljava/lang/String;

.field private static final SIGNATURE_GET_INT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-class v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_DRAWABLE:Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_INT:Ljava/lang/String;

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_BOOLEAN:Ljava/lang/String;

    :try_start_0
    const-string v0, "miui.maml.AnimatingDrawable"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 20
    :goto_0
    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    return-void
.end method

.method static getAnimationIndex(Landroid/graphics/drawable/Drawable;I)I
    .locals 4

    .line 52
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    return p1

    :cond_0
    const-string v1, "getAnimIndex"

    .line 55
    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_INT:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return p1

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 38
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getFancyDrawable"

    .line 41
    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_DRAWABLE:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static getQuietDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 45
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getQuietDrawable"

    .line 48
    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_DRAWABLE:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 31
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getStartDrawable"

    .line 34
    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_DRAWABLE:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static isInstance(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static isOnlyFancyWork(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 63
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "isOnlyFancyWork"

    .line 66
    sget-object v3, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_BOOLEAN:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, v3, v4}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static isOnlyQuietWork(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 74
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->CLS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "isOnlyQuietWork"

    .line 77
    sget-object v3, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->SIGNATURE_GET_BOOLEAN:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, v3, v4}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    return v1

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
