.class public Lcom/miui/launcher/utils/LauncherFastXmlSerializer;
.super Ljava/lang/Object;
.source "LauncherFastXmlSerializer.java"


# instance fields
.field private mInstance:Lcom/android/internal/util/FastXmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    return-object p1
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->mInstance:Lcom/android/internal/util/FastXmlSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    return-object p1
.end method
