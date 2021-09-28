.class public Lmiuix/internal/util/AttributeResolver;
.super Ljava/lang/Object;
.source "AttributeResolver.java"


# static fields
.field private static final TYPED_VALUE:Landroid/util/TypedValue;

.field private static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 35
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    if-nez p0, :cond_1

    .line 40
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 41
    sget-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private static innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 3

    .line 110
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_1

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_1

    .line 116
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .locals 2

    .line 54
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 57
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 2

    .line 129
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 132
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x12

    if-ne p0, p1, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move p2, p0

    :cond_1
    :goto_0
    return p2
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static resolveColor(Landroid/content/Context;II)I
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 69
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_1

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_2

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_2

    .line 79
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveFloat(Landroid/content/Context;IF)F
    .locals 2

    .line 183
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 186
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    .line 187
    iget p0, v0, Landroid/util/TypedValue;->data:I

    int-to-float p2, p0

    :cond_0
    return p2
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .locals 2

    .line 165
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 168
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x10

    if-ne p0, p1, :cond_0

    .line 169
    iget p2, v0, Landroid/util/TypedValue;->data:I

    :cond_0
    return p2
.end method
