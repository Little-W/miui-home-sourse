.class interface abstract Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$TagParser;
.super Ljava/lang/Object;
.source "MIUIAutoInstallsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TagParser"
.end annotation


# virtual methods
.method public abstract parseAndAdd(Landroid/content/res/XmlResourceParser;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
