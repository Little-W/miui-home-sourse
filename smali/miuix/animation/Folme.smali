.class public Lmiuix/animation/Folme;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/Folme$FolmeImpl;
    }
.end annotation


# static fields
.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/Folme$FolmeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 204
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 207
    invoke-static {v0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    goto :goto_0

    .line 210
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 211
    invoke-static {v2}, Lmiuix/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 243
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->clean()V

    :cond_0
    return-void
.end method

.method private static doClean(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    .line 238
    invoke-static {p0}, Lmiuix/animation/Folme;->cleanAnimTarget(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 217
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    const/4 v3, 0x0

    .line 218
    invoke-static {v2, v3}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    sget-object v3, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/Folme$FolmeImpl;

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v2}, Lmiuix/animation/Folme$FolmeImpl;->end()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 190
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 191
    aget-object v4, p0, v1

    sget-object v5, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {v4, v5}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v4

    aput-object v4, p1, v1

    .line 192
    sget-object v4, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    return-object v0
.end method

.method public static getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lmiuix/animation/ITargetCreator<",
            "TT;>;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation

    .line 255
    instance-of v0, p0, Lmiuix/animation/IAnimTarget;

    if-eqz v0, :cond_0

    .line 256
    check-cast p0, Lmiuix/animation/IAnimTarget;

    return-object p0

    .line 258
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    invoke-static {v0}, Lmiuix/animation/Folme;->getTargets(Ljava/util/Collection;)V

    .line 260
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 261
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    .line 267
    invoke-interface {p1, p0}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    .line 294
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 295
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    sget-object v2, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getTimeRatio()F
    .locals 1

    .line 47
    sget-object v0, Lmiuix/animation/Folme;->sTimeRatio:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiuix/animation/ValueTarget;"
        }
    .end annotation

    .line 251
    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    check-cast p0, Lmiuix/animation/ValueTarget;

    return-object p0
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .locals 1

    .line 287
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_is_dragging:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;
    .locals 3

    .line 161
    sget-object v0, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/Folme$FolmeImpl;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/IAnimTarget;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 164
    sget-object v1, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiuix/animation/IFolme;
    .locals 5

    .line 170
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 173
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 174
    aget-object p0, p0, v1

    sget-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lmiuix/animation/IAnimTarget;

    .line 177
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiuix/animation/IAnimTarget;)Lmiuix/animation/Folme$FolmeImpl;

    move-result-object p0

    if-nez p0, :cond_1

    .line 179
    new-instance p0, Lmiuix/animation/Folme$FolmeImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    .line 180
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 181
    sget-object v4, Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 171
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "useAt can not be applied to empty views array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 150
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 151
    aget-object p0, p0, v0

    sget-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_0
    new-instance p0, Lmiuix/animation/ValueTarget;

    invoke-direct {p0}, Lmiuix/animation/ValueTarget;-><init>()V

    const-wide/16 v0, 0x1

    .line 154
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/ValueTarget;->setFlags(J)V

    .line 155
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 157
    :goto_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method
