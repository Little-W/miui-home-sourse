.class public Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultGlyphChecker"
.end annotation


# static fields
.field private static final sStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private static getStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public hasGlyph(Ljava/lang/CharSequence;III)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p4, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor$DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
